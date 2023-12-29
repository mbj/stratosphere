module Stratosphere.RefactorSpaces.Route (
        module Exports, Route(..), mkRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RefactorSpaces.Route.DefaultRouteInputProperty as Exports
import {-# SOURCE #-} Stratosphere.RefactorSpaces.Route.UriPathRouteInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Route
  = Route {applicationIdentifier :: (Value Prelude.Text),
           defaultRoute :: (Prelude.Maybe DefaultRouteInputProperty),
           environmentIdentifier :: (Value Prelude.Text),
           routeType :: (Value Prelude.Text),
           serviceIdentifier :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag]),
           uriPathRoute :: (Prelude.Maybe UriPathRouteInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoute ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Route
mkRoute
  applicationIdentifier
  environmentIdentifier
  routeType
  serviceIdentifier
  = Route
      {applicationIdentifier = applicationIdentifier,
       environmentIdentifier = environmentIdentifier,
       routeType = routeType, serviceIdentifier = serviceIdentifier,
       defaultRoute = Prelude.Nothing, tags = Prelude.Nothing,
       uriPathRoute = Prelude.Nothing}
instance ToResourceProperties Route where
  toResourceProperties Route {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Route",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationIdentifier" JSON..= applicationIdentifier,
                            "EnvironmentIdentifier" JSON..= environmentIdentifier,
                            "RouteType" JSON..= routeType,
                            "ServiceIdentifier" JSON..= serviceIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultRoute" Prelude.<$> defaultRoute,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UriPathRoute" Prelude.<$> uriPathRoute]))}
instance JSON.ToJSON Route where
  toJSON Route {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationIdentifier" JSON..= applicationIdentifier,
               "EnvironmentIdentifier" JSON..= environmentIdentifier,
               "RouteType" JSON..= routeType,
               "ServiceIdentifier" JSON..= serviceIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultRoute" Prelude.<$> defaultRoute,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UriPathRoute" Prelude.<$> uriPathRoute])))
instance Property "ApplicationIdentifier" Route where
  type PropertyType "ApplicationIdentifier" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {applicationIdentifier = newValue, ..}
instance Property "DefaultRoute" Route where
  type PropertyType "DefaultRoute" Route = DefaultRouteInputProperty
  set newValue Route {..}
    = Route {defaultRoute = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" Route where
  type PropertyType "EnvironmentIdentifier" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {environmentIdentifier = newValue, ..}
instance Property "RouteType" Route where
  type PropertyType "RouteType" Route = Value Prelude.Text
  set newValue Route {..} = Route {routeType = newValue, ..}
instance Property "ServiceIdentifier" Route where
  type PropertyType "ServiceIdentifier" Route = Value Prelude.Text
  set newValue Route {..} = Route {serviceIdentifier = newValue, ..}
instance Property "Tags" Route where
  type PropertyType "Tags" Route = [Tag]
  set newValue Route {..} = Route {tags = Prelude.pure newValue, ..}
instance Property "UriPathRoute" Route where
  type PropertyType "UriPathRoute" Route = UriPathRouteInputProperty
  set newValue Route {..}
    = Route {uriPathRoute = Prelude.pure newValue, ..}