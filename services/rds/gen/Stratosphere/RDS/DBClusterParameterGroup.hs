module Stratosphere.RDS.DBClusterParameterGroup (
        DBClusterParameterGroup(..), mkDBClusterParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBClusterParameterGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html>
    DBClusterParameterGroup {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-dbclusterparametergroupname>
                             dBClusterParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-description>
                             description :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-family>
                             family :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-parameters>
                             parameters :: JSON.Object,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbclusterparametergroup.html#cfn-rds-dbclusterparametergroup-tags>
                             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBClusterParameterGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> JSON.Object -> DBClusterParameterGroup
mkDBClusterParameterGroup description family parameters
  = DBClusterParameterGroup
      {haddock_workaround_ = (), description = description,
       family = family, parameters = parameters,
       dBClusterParameterGroupName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBClusterParameterGroup where
  toResourceProperties DBClusterParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBClusterParameterGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "Family" JSON..= family,
                            "Parameters" JSON..= parameters]
                           (Prelude.catMaybes
                              [(JSON..=) "DBClusterParameterGroupName"
                                 Prelude.<$> dBClusterParameterGroupName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBClusterParameterGroup where
  toJSON DBClusterParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "Family" JSON..= family,
               "Parameters" JSON..= parameters]
              (Prelude.catMaybes
                 [(JSON..=) "DBClusterParameterGroupName"
                    Prelude.<$> dBClusterParameterGroupName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DBClusterParameterGroupName" DBClusterParameterGroup where
  type PropertyType "DBClusterParameterGroupName" DBClusterParameterGroup = Value Prelude.Text
  set newValue DBClusterParameterGroup {..}
    = DBClusterParameterGroup
        {dBClusterParameterGroupName = Prelude.pure newValue, ..}
instance Property "Description" DBClusterParameterGroup where
  type PropertyType "Description" DBClusterParameterGroup = Value Prelude.Text
  set newValue DBClusterParameterGroup {..}
    = DBClusterParameterGroup {description = newValue, ..}
instance Property "Family" DBClusterParameterGroup where
  type PropertyType "Family" DBClusterParameterGroup = Value Prelude.Text
  set newValue DBClusterParameterGroup {..}
    = DBClusterParameterGroup {family = newValue, ..}
instance Property "Parameters" DBClusterParameterGroup where
  type PropertyType "Parameters" DBClusterParameterGroup = JSON.Object
  set newValue DBClusterParameterGroup {..}
    = DBClusterParameterGroup {parameters = newValue, ..}
instance Property "Tags" DBClusterParameterGroup where
  type PropertyType "Tags" DBClusterParameterGroup = [Tag]
  set newValue DBClusterParameterGroup {..}
    = DBClusterParameterGroup {tags = Prelude.pure newValue, ..}