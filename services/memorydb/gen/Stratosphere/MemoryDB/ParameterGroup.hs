module Stratosphere.MemoryDB.ParameterGroup (
        ParameterGroup(..), mkParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ParameterGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html>
    ParameterGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html#cfn-memorydb-parametergroup-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html#cfn-memorydb-parametergroup-family>
                    family :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html#cfn-memorydb-parametergroup-parametergroupname>
                    parameterGroupName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html#cfn-memorydb-parametergroup-parameters>
                    parameters :: (Prelude.Maybe JSON.Object),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-parametergroup.html#cfn-memorydb-parametergroup-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterGroup ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterGroup
mkParameterGroup family parameterGroupName
  = ParameterGroup
      {haddock_workaround_ = (), family = family,
       parameterGroupName = parameterGroupName,
       description = Prelude.Nothing, parameters = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ParameterGroup where
  toResourceProperties ParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::ParameterGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Family" JSON..= family,
                            "ParameterGroupName" JSON..= parameterGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ParameterGroup where
  toJSON ParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Family" JSON..= family,
               "ParameterGroupName" JSON..= parameterGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ParameterGroup where
  type PropertyType "Description" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {description = Prelude.pure newValue, ..}
instance Property "Family" ParameterGroup where
  type PropertyType "Family" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {family = newValue, ..}
instance Property "ParameterGroupName" ParameterGroup where
  type PropertyType "ParameterGroupName" ParameterGroup = Value Prelude.Text
  set newValue ParameterGroup {..}
    = ParameterGroup {parameterGroupName = newValue, ..}
instance Property "Parameters" ParameterGroup where
  type PropertyType "Parameters" ParameterGroup = JSON.Object
  set newValue ParameterGroup {..}
    = ParameterGroup {parameters = Prelude.pure newValue, ..}
instance Property "Tags" ParameterGroup where
  type PropertyType "Tags" ParameterGroup = [Tag]
  set newValue ParameterGroup {..}
    = ParameterGroup {tags = Prelude.pure newValue, ..}