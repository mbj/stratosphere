module Stratosphere.Deadline.Monitor (
        Monitor(..), mkMonitor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Monitor
  = Monitor {displayName :: (Value Prelude.Text),
             identityCenterInstanceArn :: (Value Prelude.Text),
             roleArn :: (Value Prelude.Text),
             subdomain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitor ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Monitor
mkMonitor displayName identityCenterInstanceArn roleArn subdomain
  = Monitor
      {displayName = displayName,
       identityCenterInstanceArn = identityCenterInstanceArn,
       roleArn = roleArn, subdomain = subdomain}
instance ToResourceProperties Monitor where
  toResourceProperties Monitor {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Monitor", supportsTags = Prelude.False,
         properties = ["DisplayName" JSON..= displayName,
                       "IdentityCenterInstanceArn" JSON..= identityCenterInstanceArn,
                       "RoleArn" JSON..= roleArn, "Subdomain" JSON..= subdomain]}
instance JSON.ToJSON Monitor where
  toJSON Monitor {..}
    = JSON.object
        ["DisplayName" JSON..= displayName,
         "IdentityCenterInstanceArn" JSON..= identityCenterInstanceArn,
         "RoleArn" JSON..= roleArn, "Subdomain" JSON..= subdomain]
instance Property "DisplayName" Monitor where
  type PropertyType "DisplayName" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {displayName = newValue, ..}
instance Property "IdentityCenterInstanceArn" Monitor where
  type PropertyType "IdentityCenterInstanceArn" Monitor = Value Prelude.Text
  set newValue Monitor {..}
    = Monitor {identityCenterInstanceArn = newValue, ..}
instance Property "RoleArn" Monitor where
  type PropertyType "RoleArn" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {roleArn = newValue, ..}
instance Property "Subdomain" Monitor where
  type PropertyType "Subdomain" Monitor = Value Prelude.Text
  set newValue Monitor {..} = Monitor {subdomain = newValue, ..}