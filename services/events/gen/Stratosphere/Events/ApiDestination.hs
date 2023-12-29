module Stratosphere.Events.ApiDestination (
        ApiDestination(..), mkApiDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiDestination
  = ApiDestination {connectionArn :: (Value Prelude.Text),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    httpMethod :: (Value Prelude.Text),
                    invocationEndpoint :: (Value Prelude.Text),
                    invocationRateLimitPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ApiDestination
mkApiDestination connectionArn httpMethod invocationEndpoint
  = ApiDestination
      {connectionArn = connectionArn, httpMethod = httpMethod,
       invocationEndpoint = invocationEndpoint,
       description = Prelude.Nothing,
       invocationRateLimitPerSecond = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ApiDestination where
  toResourceProperties ApiDestination {..}
    = ResourceProperties
        {awsType = "AWS::Events::ApiDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionArn" JSON..= connectionArn,
                            "HttpMethod" JSON..= httpMethod,
                            "InvocationEndpoint" JSON..= invocationEndpoint]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InvocationRateLimitPerSecond"
                                 Prelude.<$> invocationRateLimitPerSecond,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON ApiDestination where
  toJSON ApiDestination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionArn" JSON..= connectionArn,
               "HttpMethod" JSON..= httpMethod,
               "InvocationEndpoint" JSON..= invocationEndpoint]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InvocationRateLimitPerSecond"
                    Prelude.<$> invocationRateLimitPerSecond,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "ConnectionArn" ApiDestination where
  type PropertyType "ConnectionArn" ApiDestination = Value Prelude.Text
  set newValue ApiDestination {..}
    = ApiDestination {connectionArn = newValue, ..}
instance Property "Description" ApiDestination where
  type PropertyType "Description" ApiDestination = Value Prelude.Text
  set newValue ApiDestination {..}
    = ApiDestination {description = Prelude.pure newValue, ..}
instance Property "HttpMethod" ApiDestination where
  type PropertyType "HttpMethod" ApiDestination = Value Prelude.Text
  set newValue ApiDestination {..}
    = ApiDestination {httpMethod = newValue, ..}
instance Property "InvocationEndpoint" ApiDestination where
  type PropertyType "InvocationEndpoint" ApiDestination = Value Prelude.Text
  set newValue ApiDestination {..}
    = ApiDestination {invocationEndpoint = newValue, ..}
instance Property "InvocationRateLimitPerSecond" ApiDestination where
  type PropertyType "InvocationRateLimitPerSecond" ApiDestination = Value Prelude.Integer
  set newValue ApiDestination {..}
    = ApiDestination
        {invocationRateLimitPerSecond = Prelude.pure newValue, ..}
instance Property "Name" ApiDestination where
  type PropertyType "Name" ApiDestination = Value Prelude.Text
  set newValue ApiDestination {..}
    = ApiDestination {name = Prelude.pure newValue, ..}