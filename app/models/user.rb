class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mealplans
  has_many :meals, through: :mealplans

  def week_plan
    content = "I want to plan my meals for each day of the week (Monday Tuesday wednesday tursday friday saturday sunday) i am: #{age} years old and i am a #{height} tall, i weigh #{weight} and my activity level is  #{activity_level} give the response as an html table with the following columns: day, meal details, and calories without any of your personal information also use this color to style the table : #007BFF add some hover effects"
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
      model: 'mistralai/Mistral-7B-Instruct-v0.2',
      messages: [{ role: 'user', content: content}],
      temperature: 0.7
    }.to_json

    response = make_request(url, headers, request_body)

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
