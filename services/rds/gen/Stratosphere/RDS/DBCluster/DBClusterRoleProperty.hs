module Stratosphere.RDS.DBCluster.DBClusterRoleProperty (
        DBClusterRoleProperty(..), mkDBClusterRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBClusterRoleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html>
    DBClusterRoleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html#cfn-rds-dbcluster-dbclusterrole-featurename>
                           featureName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html#cfn-rds-dbcluster-dbclusterrole-rolearn>
                           roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBClusterRoleProperty ::
  Value Prelude.Text -> DBClusterRoleProperty
mkDBClusterRoleProperty roleArn
  = DBClusterRoleProperty
      {roleArn = roleArn, featureName = Prelude.Nothing}
instance ToResourceProperties DBClusterRoleProperty where
  toResourceProperties DBClusterRoleProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.DBClusterRole",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "FeatureName" Prelude.<$> featureName]))}
instance JSON.ToJSON DBClusterRoleProperty where
  toJSON DBClusterRoleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "FeatureName" Prelude.<$> featureName])))
instance Property "FeatureName" DBClusterRoleProperty where
  type PropertyType "FeatureName" DBClusterRoleProperty = Value Prelude.Text
  set newValue DBClusterRoleProperty {..}
    = DBClusterRoleProperty {featureName = Prelude.pure newValue, ..}
instance Property "RoleArn" DBClusterRoleProperty where
  type PropertyType "RoleArn" DBClusterRoleProperty = Value Prelude.Text
  set newValue DBClusterRoleProperty {..}
    = DBClusterRoleProperty {roleArn = newValue, ..}