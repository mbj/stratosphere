module Stratosphere.CloudFormation.Macro (
        Macro(..), mkMacro
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Macro
  = Macro {description :: (Prelude.Maybe (Value Prelude.Text)),
           functionName :: (Value Prelude.Text),
           logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
           logRoleARN :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Value Prelude.Text)}
mkMacro :: Value Prelude.Text -> Value Prelude.Text -> Macro
mkMacro functionName name
  = Macro
      {functionName = functionName, name = name,
       description = Prelude.Nothing, logGroupName = Prelude.Nothing,
       logRoleARN = Prelude.Nothing}
instance ToResourceProperties Macro where
  toResourceProperties Macro {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::Macro",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                               (JSON..=) "LogRoleARN" Prelude.<$> logRoleARN]))}
instance JSON.ToJSON Macro where
  toJSON Macro {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                  (JSON..=) "LogRoleARN" Prelude.<$> logRoleARN])))
instance Property "Description" Macro where
  type PropertyType "Description" Macro = Value Prelude.Text
  set newValue Macro {..}
    = Macro {description = Prelude.pure newValue, ..}
instance Property "FunctionName" Macro where
  type PropertyType "FunctionName" Macro = Value Prelude.Text
  set newValue Macro {..} = Macro {functionName = newValue, ..}
instance Property "LogGroupName" Macro where
  type PropertyType "LogGroupName" Macro = Value Prelude.Text
  set newValue Macro {..}
    = Macro {logGroupName = Prelude.pure newValue, ..}
instance Property "LogRoleARN" Macro where
  type PropertyType "LogRoleARN" Macro = Value Prelude.Text
  set newValue Macro {..}
    = Macro {logRoleARN = Prelude.pure newValue, ..}
instance Property "Name" Macro where
  type PropertyType "Name" Macro = Value Prelude.Text
  set newValue Macro {..} = Macro {name = newValue, ..}