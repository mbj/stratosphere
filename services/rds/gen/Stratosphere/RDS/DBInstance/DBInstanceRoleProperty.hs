module Stratosphere.RDS.DBInstance.DBInstanceRoleProperty (
        DBInstanceRoleProperty(..), mkDBInstanceRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBInstanceRoleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html>
    DBInstanceRoleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-featurename>
                            featureName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-rolearn>
                            roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBInstanceRoleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DBInstanceRoleProperty
mkDBInstanceRoleProperty featureName roleArn
  = DBInstanceRoleProperty
      {haddock_workaround_ = (), featureName = featureName,
       roleArn = roleArn}
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