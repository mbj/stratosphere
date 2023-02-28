module Stratosphere.FraudDetector.Detector.EventVariableProperty (
        EventVariableProperty(..), mkEventVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventVariableProperty
  = EventVariableProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                           createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                           dataSource :: (Prelude.Maybe (Value Prelude.Text)),
                           dataType :: (Prelude.Maybe (Value Prelude.Text)),
                           defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           inline :: (Prelude.Maybe (Value Prelude.Bool)),
                           lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag]),
                           variableType :: (Prelude.Maybe (Value Prelude.Text))}
mkEventVariableProperty :: EventVariableProperty
mkEventVariableProperty
  = EventVariableProperty
      {arn = Prelude.Nothing, createdTime = Prelude.Nothing,
       dataSource = Prelude.Nothing, dataType = Prelude.Nothing,
       defaultValue = Prelude.Nothing, description = Prelude.Nothing,
       inline = Prelude.Nothing, lastUpdatedTime = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing,
       variableType = Prelude.Nothing}
instance ToResourceProperties EventVariableProperty where
  toResourceProperties EventVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.EventVariable",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "DataSource" Prelude.<$> dataSource,
                            (JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Inline" Prelude.<$> inline,
                            (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VariableType" Prelude.<$> variableType])}
instance JSON.ToJSON EventVariableProperty where
  toJSON EventVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "DataSource" Prelude.<$> dataSource,
               (JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Inline" Prelude.<$> inline,
               (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VariableType" Prelude.<$> variableType]))
instance Property "Arn" EventVariableProperty where
  type PropertyType "Arn" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" EventVariableProperty where
  type PropertyType "CreatedTime" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {createdTime = Prelude.pure newValue, ..}
instance Property "DataSource" EventVariableProperty where
  type PropertyType "DataSource" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {dataSource = Prelude.pure newValue, ..}
instance Property "DataType" EventVariableProperty where
  type PropertyType "DataType" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {dataType = Prelude.pure newValue, ..}
instance Property "DefaultValue" EventVariableProperty where
  type PropertyType "DefaultValue" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {defaultValue = Prelude.pure newValue, ..}
instance Property "Description" EventVariableProperty where
  type PropertyType "Description" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {description = Prelude.pure newValue, ..}
instance Property "Inline" EventVariableProperty where
  type PropertyType "Inline" EventVariableProperty = Value Prelude.Bool
  set newValue EventVariableProperty {..}
    = EventVariableProperty {inline = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" EventVariableProperty where
  type PropertyType "LastUpdatedTime" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty
        {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Name" EventVariableProperty where
  type PropertyType "Name" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {name = Prelude.pure newValue, ..}
instance Property "Tags" EventVariableProperty where
  type PropertyType "Tags" EventVariableProperty = [Tag]
  set newValue EventVariableProperty {..}
    = EventVariableProperty {tags = Prelude.pure newValue, ..}
instance Property "VariableType" EventVariableProperty where
  type PropertyType "VariableType" EventVariableProperty = Value Prelude.Text
  set newValue EventVariableProperty {..}
    = EventVariableProperty {variableType = Prelude.pure newValue, ..}