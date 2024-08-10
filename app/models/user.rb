class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mealplans
  has_many :meals, through: :mealplans

  def week_plan
    content = "I want to plan my daily meals i am: #{age} years old and i am a #{height} tall, i weigh #{weight} and my activity level is  #{activity_level}respond using html table with style of 2 column : meal details and calories  without any of your own answer like 'Here is a simple meal plan"
    response = ai_request(content)
    response["choices"].first["message"]["content"]
  end

  private

  def ai_request(content)
    url = URI('https://api.aimlapi.com/chat/completions')

    headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Bearer #{ENV.fetch('OPENAI_ACCESS_TOKEN')}"
    }
    request_body = {
      model: 'meta-llama/Meta-Llama-3.1-8B-Instruct-Turbo',
      messages: [{ role: 'user', content: content}],
      temperature: 0.7
    }.to_json

    response = make_request(url, headers, request_body)

    update(content: new_content)

    return JSON.parse(response.body) if response.code == '200' || response.code == '201'

    return "Error: #{response.body}"
  end

  def make_request(url, headers, request_body)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    request = Net::HTTP::Post.new(url, headers)
    request.body = request_body
    return http.request(request)
  end
end
