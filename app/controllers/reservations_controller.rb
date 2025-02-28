class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: reservations
  end

  def show
    reservation = Reservation.find(params[:id])
    render json: reservation
  end

  def create
    reservation = Reservation.create!(
      guest_name: params[:guest_name],
      party_size: params[:party_size],
      cancelled: false,
      time: params[:time],
      date: params[:date],
      restaurant_id: params[restaurant_id])

    render json: reservation
  end

  def update
    reservation = Reservation.find(params[:id])
    reservation.update(
      party_size: params[:party_size] || reservation.party_size,
      cancelled: false || reservation.cancelled,
      time: params[:time] || reservation.time,
      date: params[:date] || reservation.date,
      restaurant_id: params[restaurant_id] || reservation.restaurant_id)
  end
end
