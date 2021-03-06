require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Articles123sController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Articles123. As you add validations to Articles123, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Articles123sController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all articles123s as @articles123s" do
      articles123 = Articles123.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:articles123s)).to eq([articles123])
    end
  end

  describe "GET #show" do
    it "assigns the requested articles123 as @articles123" do
      articles123 = Articles123.create! valid_attributes
      get :show, {:id => articles123.to_param}, valid_session
      expect(assigns(:articles123)).to eq(articles123)
    end
  end

  describe "GET #new" do
    it "assigns a new articles123 as @articles123" do
      get :new, {}, valid_session
      expect(assigns(:articles123)).to be_a_new(Articles123)
    end
  end

  describe "GET #edit" do
    it "assigns the requested articles123 as @articles123" do
      articles123 = Articles123.create! valid_attributes
      get :edit, {:id => articles123.to_param}, valid_session
      expect(assigns(:articles123)).to eq(articles123)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Articles123" do
        expect {
          post :create, {:articles123 => valid_attributes}, valid_session
        }.to change(Articles123, :count).by(1)
      end

      it "assigns a newly created articles123 as @articles123" do
        post :create, {:articles123 => valid_attributes}, valid_session
        expect(assigns(:articles123)).to be_a(Articles123)
        expect(assigns(:articles123)).to be_persisted
      end

      it "redirects to the created articles123" do
        post :create, {:articles123 => valid_attributes}, valid_session
        expect(response).to redirect_to(Articles123.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved articles123 as @articles123" do
        post :create, {:articles123 => invalid_attributes}, valid_session
        expect(assigns(:articles123)).to be_a_new(Articles123)
      end

      it "re-renders the 'new' template" do
        post :create, {:articles123 => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested articles123" do
        articles123 = Articles123.create! valid_attributes
        put :update, {:id => articles123.to_param, :articles123 => new_attributes}, valid_session
        articles123.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested articles123 as @articles123" do
        articles123 = Articles123.create! valid_attributes
        put :update, {:id => articles123.to_param, :articles123 => valid_attributes}, valid_session
        expect(assigns(:articles123)).to eq(articles123)
      end

      it "redirects to the articles123" do
        articles123 = Articles123.create! valid_attributes
        put :update, {:id => articles123.to_param, :articles123 => valid_attributes}, valid_session
        expect(response).to redirect_to(articles123)
      end
    end

    context "with invalid params" do
      it "assigns the articles123 as @articles123" do
        articles123 = Articles123.create! valid_attributes
        put :update, {:id => articles123.to_param, :articles123 => invalid_attributes}, valid_session
        expect(assigns(:articles123)).to eq(articles123)
      end

      it "re-renders the 'edit' template" do
        articles123 = Articles123.create! valid_attributes
        put :update, {:id => articles123.to_param, :articles123 => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested articles123" do
      articles123 = Articles123.create! valid_attributes
      expect {
        delete :destroy, {:id => articles123.to_param}, valid_session
      }.to change(Articles123, :count).by(-1)
    end

    it "redirects to the articles123s list" do
      articles123 = Articles123.create! valid_attributes
      delete :destroy, {:id => articles123.to_param}, valid_session
      expect(response).to redirect_to(articles123s_url)
    end
  end

end
