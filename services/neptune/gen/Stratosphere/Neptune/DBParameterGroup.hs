module Stratosphere.Neptune.DBParameterGroup (
        DBParameterGroup(..), mkDBParameterGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBParameterGroup
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html>
    DBParameterGroup {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-description>
                      description :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-family>
                      family :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-parameters>
                      parameters :: JSON.Object,
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBParameterGroup ::
  Value Prelude.Text
  -> Value Prelude.Text -> JSON.Object -> DBParameterGroup
mkDBParameterGroup description family parameters
  = DBParameterGroup
      {description = description, family = family,
       parameters = parameters, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DBParameterGroup where
  toResourceProperties DBParameterGroup {..}
    = ResourceProperties
        {awsType = "AWS::Neptune::DBParameterGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description, "Family" JSON..= family,
                            "Parameters" JSON..= parameters]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DBParameterGroup where
  toJSON DBParameterGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description, "Family" JSON..= family,
               "Parameters" JSON..= parameters]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" DBParameterGroup where
  type PropertyType "Description" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup {description = newValue, ..}
instance Property "Family" DBParameterGroup where
  type PropertyType "Family" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup {family = newValue, ..}
instance Property "Name" DBParameterGroup where
  type PropertyType "Name" DBParameterGroup = Value Prelude.Text
  set newValue DBParameterGroup {..}
    = DBParameterGroup {name = Prelude.pure newValue, ..}
instance Property "Parameters" DBParameterGroup where
  type PropertyType "Parameters" DBParameterGroup = JSON.Object
  set newValue DBParameterGroup {..}
    = DBParameterGroup {parameters = newValue, ..}
instance Property "Tags" DBParameterGroup where
  type PropertyType "Tags" DBParameterGroup = [Tag]
  set newValue DBParameterGroup {..}
    = DBParameterGroup {tags = Prelude.pure newValue, ..}