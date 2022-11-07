<h2>LocalExplorer</h2>

    The LocalExplorer is a Rails 7 web application built during the final weeks
    of the summer Le Wagon Full Stack-Web Development bootcamp.
    <br />
    <h4>Overview</h4>
    LocalExplorer allows users to search for trips created by 'locals', who are
    expert guides for local experiences such as hiking or sightseeing. The
    platform allows these locals, otherwise known as explorers, to take
    tourists, who wouldn't have accessible means of transport, booked on a trip,
    where the means of transport for the trip is normally limited.
    <br />
    <h4>Features overview</h4>
    <p>
      The application comprises different components and rich of functionality
      which provides a users a wonderful UX experience in the app.
    </p>

    <li>
      <strong>Geo-location</strong> - Integration of Mapbox API for search
      requests.
    </li>
    <br />
    <li>
      <strong>Devise</strong> - A Rails authentication component which allows
      for user creation, update and deletion.
    </li>
    <br />
    <li>
      <strong>Database</strong> - Created on a PostgresSQL database with
      pre-seeded Trips and Bookings models.
    </li>
    <br />
    <li>
      <strong>Dependency</strong> - Models are dependent on each other
      throughout the app. Deletion of trips and bookings if a chatroom is
      created will be deleted from the database.
    </li>
    <br />
    <li>
      <strong>Custom domain & SSL certificate</strong> - Custom domain generated
      and hosted on Heroku, including SSL certificate added to authenticate the
      applications identity and enable an encrypted connection.
    </li>
    <br />
    <li>
      <strong>Messenger</strong> - A Rails component added which generates a
      chatroom when users create a booking. This has a dependency on the Trips
      and Booking model in the application. Reviews - This Rails components,
      allows users with bookings to create reviews on the user model. These are
      then updated in the view and index pages of the user profiles (dependant
      also on a booking creation).
    </li>
    <h4>How to use</h4>
    Create an account (you can use a fake email address and password for ease of
    use). You can edit your account in the top right hand corner of the drop
    down. Click available trips to see list of available trips or search within
    the search bar to be taken to nearby trips NOTE (type Barcelona or Spain as
    the app only has seeded trips in that area). Add yourself to a pre-seeded
    Trip which is not full or create a trip using the form which will sit
    permanently within the app.
