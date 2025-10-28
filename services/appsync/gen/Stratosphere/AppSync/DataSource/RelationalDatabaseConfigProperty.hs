module Stratosphere.AppSync.DataSource.RelationalDatabaseConfigProperty (
        module Exports, RelationalDatabaseConfigProperty(..),
        mkRelationalDatabaseConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.RdsHttpEndpointConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationalDatabaseConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html>
    RelationalDatabaseConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig>
                                      rdsHttpEndpointConfig :: (Prelude.Maybe RdsHttpEndpointConfigProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype>
                                      relationalDatabaseSourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelationalDatabaseConfigProperty ::
  Value Prelude.Text -> RelationalDatabaseConfigProperty
mkRelationalDatabaseConfigProperty relationalDatabaseSourceType
  = RelationalDatabaseConfigProperty
      {haddock_workaround_ = (),
       relationalDatabaseSourceType = relationalDatabaseSourceType,
       rdsHttpEndpointConfig = Prelude.Nothing}
instance ToResourceProperties RelationalDatabaseConfigProperty where
  toResourceProperties RelationalDatabaseConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.RelationalDatabaseConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RelationalDatabaseSourceType"
                              JSON..= relationalDatabaseSourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "RdsHttpEndpointConfig"
                                 Prelude.<$> rdsHttpEndpointConfig]))}
instance JSON.ToJSON RelationalDatabaseConfigProperty where
  toJSON RelationalDatabaseConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RelationalDatabaseSourceType"
                 JSON..= relationalDatabaseSourceType]
              (Prelude.catMaybes
                 [(JSON..=) "RdsHttpEndpointConfig"
                    Prelude.<$> rdsHttpEndpointConfig])))
instance Property "RdsHttpEndpointConfig" RelationalDatabaseConfigProperty where
  type PropertyType "RdsHttpEndpointConfig" RelationalDatabaseConfigProperty = RdsHttpEndpointConfigProperty
  set newValue RelationalDatabaseConfigProperty {..}
    = RelationalDatabaseConfigProperty
        {rdsHttpEndpointConfig = Prelude.pure newValue, ..}
instance Property "RelationalDatabaseSourceType" RelationalDatabaseConfigProperty where
  type PropertyType "RelationalDatabaseSourceType" RelationalDatabaseConfigProperty = Value Prelude.Text
  set newValue RelationalDatabaseConfigProperty {..}
    = RelationalDatabaseConfigProperty
        {relationalDatabaseSourceType = newValue, ..}