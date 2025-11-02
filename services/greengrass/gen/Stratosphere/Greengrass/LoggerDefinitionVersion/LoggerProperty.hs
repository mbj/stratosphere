module Stratosphere.Greengrass.LoggerDefinitionVersion.LoggerProperty (
        LoggerProperty(..), mkLoggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html>
    LoggerProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-component>
                    component :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-id>
                    id :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-level>
                    level :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-space>
                    space :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggerProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> LoggerProperty
mkLoggerProperty component id level type'
  = LoggerProperty
      {haddock_workaround_ = (), component = component, id = id,
       level = level, type' = type', space = Prelude.Nothing}
instance ToResourceProperties LoggerProperty where
  toResourceProperties LoggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::LoggerDefinitionVersion.Logger",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Component" JSON..= component, "Id" JSON..= id,
                            "Level" JSON..= level, "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Space" Prelude.<$> space]))}
instance JSON.ToJSON LoggerProperty where
  toJSON LoggerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Component" JSON..= component, "Id" JSON..= id,
               "Level" JSON..= level, "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Space" Prelude.<$> space])))
instance Property "Component" LoggerProperty where
  type PropertyType "Component" LoggerProperty = Value Prelude.Text
  set newValue LoggerProperty {..}
    = LoggerProperty {component = newValue, ..}
instance Property "Id" LoggerProperty where
  type PropertyType "Id" LoggerProperty = Value Prelude.Text
  set newValue LoggerProperty {..}
    = LoggerProperty {id = newValue, ..}
instance Property "Level" LoggerProperty where
  type PropertyType "Level" LoggerProperty = Value Prelude.Text
  set newValue LoggerProperty {..}
    = LoggerProperty {level = newValue, ..}
instance Property "Space" LoggerProperty where
  type PropertyType "Space" LoggerProperty = Value Prelude.Integer
  set newValue LoggerProperty {..}
    = LoggerProperty {space = Prelude.pure newValue, ..}
instance Property "Type" LoggerProperty where
  type PropertyType "Type" LoggerProperty = Value Prelude.Text
  set newValue LoggerProperty {..}
    = LoggerProperty {type' = newValue, ..}