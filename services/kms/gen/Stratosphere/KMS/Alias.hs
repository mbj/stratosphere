module Stratosphere.KMS.Alias (
        Alias(..), mkAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alias
  = Alias {aliasName :: (Value Prelude.Text),
           targetKeyId :: (Value Prelude.Text)}
mkAlias :: Value Prelude.Text -> Value Prelude.Text -> Alias
mkAlias aliasName targetKeyId
  = Alias {aliasName = aliasName, targetKeyId = targetKeyId}
instance ToResourceProperties Alias where
  toResourceProperties Alias {..}
    = ResourceProperties
        {awsType = "AWS::KMS::Alias",
         properties = ["AliasName" JSON..= aliasName,
                       "TargetKeyId" JSON..= targetKeyId]}
instance JSON.ToJSON Alias where
  toJSON Alias {..}
    = JSON.object
        ["AliasName" JSON..= aliasName, "TargetKeyId" JSON..= targetKeyId]
instance Property "AliasName" Alias where
  type PropertyType "AliasName" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {aliasName = newValue, ..}
instance Property "TargetKeyId" Alias where
  type PropertyType "TargetKeyId" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {targetKeyId = newValue, ..}