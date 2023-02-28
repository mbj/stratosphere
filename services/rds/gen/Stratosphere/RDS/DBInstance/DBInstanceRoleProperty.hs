module Stratosphere.RDS.DBInstance.DBInstanceRoleProperty (
        DBInstanceRoleProperty(..), mkDBInstanceRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBInstanceRoleProperty
  = DBInstanceRoleProperty {featureName :: (Value Prelude.Text),
                            roleArn :: (Value Prelude.Text)}
mkDBInstanceRoleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DBInstanceRoleProperty
mkDBInstanceRoleProperty featureName roleArn
  = DBInstanceRoleProperty
      {featureName = featureName, roleArn = roleArn}
instance ToResourceProperties DBInstanceRoleProperty where
  toResourceProperties DBInstanceRoleProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.DBInstanceRole",
         supportsTags = Prelude.False,
         properties = ["FeatureName" JSON..= featureName,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON DBInstanceRoleProperty where
  toJSON DBInstanceRoleProperty {..}
    = JSON.object
        ["FeatureName" JSON..= featureName, "RoleArn" JSON..= roleArn]
instance Property "FeatureName" DBInstanceRoleProperty where
  type PropertyType "FeatureName" DBInstanceRoleProperty = Value Prelude.Text
  set newValue DBInstanceRoleProperty {..}
    = DBInstanceRoleProperty {featureName = newValue, ..}
instance Property "RoleArn" DBInstanceRoleProperty where
  type PropertyType "RoleArn" DBInstanceRoleProperty = Value Prelude.Text
  set newValue DBInstanceRoleProperty {..}
    = DBInstanceRoleProperty {roleArn = newValue, ..}