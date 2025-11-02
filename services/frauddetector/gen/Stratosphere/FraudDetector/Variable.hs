module Stratosphere.FraudDetector.Variable (
        Variable(..), mkVariable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Variable
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html>
    Variable {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-datasource>
              dataSource :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-datatype>
              dataType :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-defaultvalue>
              defaultValue :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-variable.html#cfn-frauddetector-variable-variabletype>
              variableType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariable ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Variable
mkVariable dataSource dataType defaultValue name
  = Variable
      {haddock_workaround_ = (), dataSource = dataSource,
       dataType = dataType, defaultValue = defaultValue, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing,
       variableType = Prelude.Nothing}
instance ToResourceProperties Variable where
  toResourceProperties Variable {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Variable",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSource" JSON..= dataSource, "DataType" JSON..= dataType,
                            "DefaultValue" JSON..= defaultValue, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VariableType" Prelude.<$> variableType]))}
instance JSON.ToJSON Variable where
  toJSON Variable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSource" JSON..= dataSource, "DataType" JSON..= dataType,
               "DefaultValue" JSON..= defaultValue, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VariableType" Prelude.<$> variableType])))
instance Property "DataSource" Variable where
  type PropertyType "DataSource" Variable = Value Prelude.Text
  set newValue Variable {..} = Variable {dataSource = newValue, ..}
instance Property "DataType" Variable where
  type PropertyType "DataType" Variable = Value Prelude.Text
  set newValue Variable {..} = Variable {dataType = newValue, ..}
instance Property "DefaultValue" Variable where
  type PropertyType "DefaultValue" Variable = Value Prelude.Text
  set newValue Variable {..} = Variable {defaultValue = newValue, ..}
instance Property "Description" Variable where
  type PropertyType "Description" Variable = Value Prelude.Text
  set newValue Variable {..}
    = Variable {description = Prelude.pure newValue, ..}
instance Property "Name" Variable where
  type PropertyType "Name" Variable = Value Prelude.Text
  set newValue Variable {..} = Variable {name = newValue, ..}
instance Property "Tags" Variable where
  type PropertyType "Tags" Variable = [Tag]
  set newValue Variable {..}
    = Variable {tags = Prelude.pure newValue, ..}
instance Property "VariableType" Variable where
  type PropertyType "VariableType" Variable = Value Prelude.Text
  set newValue Variable {..}
    = Variable {variableType = Prelude.pure newValue, ..}