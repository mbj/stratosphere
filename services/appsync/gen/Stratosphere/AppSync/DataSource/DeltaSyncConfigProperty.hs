module Stratosphere.AppSync.DataSource.DeltaSyncConfigProperty (
        DeltaSyncConfigProperty(..), mkDeltaSyncConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaSyncConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html>
    DeltaSyncConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-basetablettl>
                             baseTableTTL :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-deltasynctablename>
                             deltaSyncTableName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-deltasynctablettl>
                             deltaSyncTableTTL :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeltaSyncConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DeltaSyncConfigProperty
mkDeltaSyncConfigProperty
  baseTableTTL
  deltaSyncTableName
  deltaSyncTableTTL
  = DeltaSyncConfigProperty
      {haddock_workaround_ = (), baseTableTTL = baseTableTTL,
       deltaSyncTableName = deltaSyncTableName,
       deltaSyncTableTTL = deltaSyncTableTTL}
instance ToResourceProperties DeltaSyncConfigProperty where
  toResourceProperties DeltaSyncConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.DeltaSyncConfig",
         supportsTags = Prelude.False,
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