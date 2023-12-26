<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}" class="col-md-6">
            @csrf
            <div class="text-center mb-4">
                <img src="{{asset('image/user1.png')}}" alt="Image" width="100" height="100">
            </div>
            <!-- Email Address -->
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" class="form-control" type="email" name="email" value="{{ old('email') }}" required autofocus autocomplete="username">
                @if ($errors->has('email'))
                    <div class="text-danger mt-2">{{ $errors->first('email') }}</div>
                @endif
            </div>

            <!-- Password -->
            <div class="form-group mt-4">
                <label for="password">Password</label>
                <input id="password" class="form-control" type="password" name="password" required autocomplete="current-password">
                @if ($errors->has('password'))
                    <div class="text-danger mt-2">{{ $errors->first('password') }}</div>
                @endif
            </div>

            <!-- Remember Me -->
            <div class="form-check mt-4">
                <input id="remember_me" type="checkbox" class="form-check-input" name="remember">
                <label for="remember_me" class="form-check-label">Remember me</label>
            </div>

            <div class="form-group mt-4">
                @if (Route::has('password.request'))
                    <a href="{{ route('password.request') }}" class="text-sm text-gray-600">Forgot your password?</a><br>
                @endif
                <a  href="{{ route('register') }}" class="text-sm text-gray-600">Didn't registered? At first registraion here</a><br>
                <button type="submit" class="btn btn-primary ml-3">Log in</button>
            </div>
        </form>
</x-guest-layout>
