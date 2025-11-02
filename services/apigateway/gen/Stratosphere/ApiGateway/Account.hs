module Stratosphere.ApiGateway.Account (
        Account(..), mkAccount
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Account
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html>
    Account {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn>
             cloudWatchRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccount :: Account
mkAccount
  = Account
      {haddock_workaround_ = (), cloudWatchRoleArn = Prelude.Nothing}
instance ToResourceProperties Account where
  toResourceProperties Account {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Account",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchRoleArn" Prelude.<$> cloudWatchRoleArn])}
instance JSON.ToJSON Account where
  toJSON Account {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchRoleArn" Prelude.<$> cloudWatchRoleArn]))
instance Property "CloudWatchRoleArn" Account where
  type PropertyType "CloudWatchRoleArn" Account = Value Prelude.Text
  set newValue Account {..}
    = Account {cloudWatchRoleArn = Prelude.pure newValue, ..}