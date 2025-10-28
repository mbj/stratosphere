module Stratosphere.Events.ApiDestination (
        ApiDestination(..), mkApiDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiDestination
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html>
    ApiDestination {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-connectionarn>
                    connectionArn :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-httpmethod>
                    httpMethod :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-invocationendpoint>
                    invocationEndpoint :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-invocationratelimitpersecond>
                    invocationRateLimitPerSecond :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-apidestination.html#cfn-events-apidestination-name>
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ApiDestination
mkApiDestination connectionArn httpMethod invocationEndpoint
  = ApiDestination
      {haddock_workaround_ = (), connectionArn = connectionArn,
       httpMethod = httpMethod, invocationEndpoint = invocationEndpoint,
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