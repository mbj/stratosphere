module Stratosphere.AppSync.DataSource.DeltaSyncConfigProperty (
        DeltaSyncConfigProperty(..), mkDeltaSyncConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaSyncConfigProperty
  = DeltaSyncConfigProperty {baseTableTTL :: (Value Prelude.Text),
                             deltaSyncTableName :: (Value Prelude.Text),
                             deltaSyncTableTTL :: (Value Prelude.Text)}
mkDeltaSyncConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DeltaSyncConfigProperty
mkDeltaSyncConfigProperty
  baseTableTTL
  deltaSyncTableName
  deltaSyncTableTTL
  = DeltaSyncConfigProperty
      {baseTableTTL = baseTableTTL,
       deltaSyncTableName = deltaSyncTableName,
       deltaSyncTableTTL = deltaSyncTableTTL}
instance ToResourceProperties DeltaSyncConfigProperty where
  toResourceProperties DeltaSyncConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.DeltaSyncConfig",
         properties = ["BaseTableTTL" JSON..= baseTableTTL,
                       "DeltaSyncTableName" JSON..= deltaSyncTableName,
                       "DeltaSyncTableTTL" JSON..= deltaSyncTableTTL]}
instance JSON.ToJSON DeltaSyncConfigProperty where
  toJSON DeltaSyncConfigProperty {..}
    = JSON.object
        ["BaseTableTTL" JSON..= baseTableTTL,
         "DeltaSyncTableName" JSON..= deltaSyncTableName,
         "DeltaSyncTableTTL" JSON..= deltaSyncTableTTL]
instance Property "BaseTableTTL" DeltaSyncConfigProperty where
  type PropertyType "BaseTableTTL" DeltaSyncConfigProperty = Value Prelude.Text
  set newValue DeltaSyncConfigProperty {..}
    = DeltaSyncConfigProperty {baseTableTTL = newValue, ..}
instance Property "DeltaSyncTableName" DeltaSyncConfigProperty where
  type PropertyType "DeltaSyncTableName" DeltaSyncConfigProperty = Value Prelude.Text
  set newValue DeltaSyncConfigProperty {..}
    = DeltaSyncConfigProperty {deltaSyncTableName = newValue, ..}
instance Property "DeltaSyncTableTTL" DeltaSyncConfigProperty where
  type PropertyType "DeltaSyncTableTTL" DeltaSyncConfigProperty = Value Prelude.Text
  set newValue DeltaSyncConfigProperty {..}
    = DeltaSyncConfigProperty {deltaSyncTableTTL = newValue, ..}