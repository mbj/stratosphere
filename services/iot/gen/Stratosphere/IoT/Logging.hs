module Stratosphere.IoT.Logging (
        Logging(..), mkLogging
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Logging
  = Logging {accountId :: (Value Prelude.Text),
             defaultLogLevel :: (Value Prelude.Text),
             roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogging ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Logging
mkLogging accountId defaultLogLevel roleArn
  = Logging
      {accountId = accountId, defaultLogLevel = defaultLogLevel,
       roleArn = roleArn}
instance ToResourceProperties Logging where
  toResourceProperties Logging {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Logging", supportsTags = Prelude.False,
         properties = ["AccountId" JSON..= accountId,
                       "DefaultLogLevel" JSON..= defaultLogLevel,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON Logging where
  toJSON Logging {..}
    = JSON.object
        ["AccountId" JSON..= accountId,
         "DefaultLogLevel" JSON..= defaultLogLevel,
         "RoleArn" JSON..= roleArn]
instance Property "AccountId" Logging where
  type PropertyType "AccountId" Logging = Value Prelude.Text
  set newValue Logging {..} = Logging {accountId = newValue, ..}
instance Property "DefaultLogLevel" Logging where
  type PropertyType "DefaultLogLevel" Logging = Value Prelude.Text
  set newValue Logging {..}
    = Logging {defaultLogLevel = newValue, ..}
instance Property "RoleArn" Logging where
  type PropertyType "RoleArn" Logging = Value Prelude.Text
  set newValue Logging {..} = Logging {roleArn = newValue, ..}