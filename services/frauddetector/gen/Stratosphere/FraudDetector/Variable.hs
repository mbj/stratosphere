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
  = Variable {dataSource :: (Value Prelude.Text),
              dataType :: (Value Prelude.Text),
              defaultValue :: (Value Prelude.Text),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag]),
              variableType :: (Prelude.Maybe (Value Prelude.Text))}
mkVariable ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Variable
mkVariable dataSource dataType defaultValue name
  = Variable
      {dataSource = dataSource, dataType = dataType,
       defaultValue = defaultValue, name = name,
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