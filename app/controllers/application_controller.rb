set :bind, '0.0.0.0' 

class ApplicationController < Sinatra::Base

    get "/" do
        {message: "Good luck with your project!"}.to_json
    end


    #users routes
    get '/users' do
        get_users = User.all
        get_users.to_json
    end

    get '/users/id' do 
        get_users_by_id = User.find(params[:id])
        get_users_by_id.to_json
    end

    post '/users' do
        new_users = User.create(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        )
        new_users.to_json
    end

    patch '/users/:id' do
        patch_users = User.find(params[:id])
        patch_users.update(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        )
        patch_users.to_json
    end

    delete '/users/:id' do
        delete_users = User.find(params[:id])
        delete_users.destroy
        delete_users.to_json
    end

    #books routes
    get '/books' do
        get_book = Book.all
        get_book.to_json
    end

    get '/books/:id' do
        new_books_by_id = Book.find(params[:id])
        new_books_by_id.to_json
    end

    post '/books' do 
        new_books = Book.create(
            title: params[:title],
            author: params[:author],
            description: params[:description],
            pages: params[:pages],
            user_id: params[:user_id]
        )
        new_books.to_json
    end

    patch '/books/:id' do
        patch_books = Book.find(params[:id])
        patch_books.update(
            title: params[:title],
            author: params[:author],
            description: params[:description],
            pages: params[:pages],
            user_id: params[:user_id]
        )
        patch_books.to_json
    end

    delete '/books/:id' do
        delete_books = Book.find(params[:id])
        delete_books.destroy
        delete_books.to_json
    end

    #reviews routes
    get '/reviews' do
        get_reviews = Review.all
        get_reviews.to_json
    end

    get '/reviews/:id' do
        get_reviews_by_id = Review.find(params[:id])
        get_reviews_by_id.to_json
    end

    post '/reviews' do
        new_reviews = Review.create(
            comments: params[:params]
        )
        new_reviews.to_json
    end

    patch '/reviews/:id' do
        patch_reviews = Review.find(params[:id])
        patch_reviews.update(
            comments: params[:comments]
        )
        patch_reviews.to_json
    end

    delete '/reviews/:id' do
        delete_reviews = Review.find(params[:id])
        delete_reviews.destroy
        delete_reviews.to_json
    end
end