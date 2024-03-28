module Stratosphere.SSM.Parameter (
        Parameter(..), mkParameter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Parameter
  = Parameter {allowedPattern :: (Prelude.Maybe (Value Prelude.Text)),
               dataType :: (Prelude.Maybe (Value Prelude.Text)),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Prelude.Maybe (Value Prelude.Text)),
               policies :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               tier :: (Prelude.Maybe (Value Prelude.Text)),
               type' :: (Value Prelude.Text),
               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameter ::
  Value Prelude.Text -> Value Prelude.Text -> Parameter
mkParameter type' value
  = Parameter
      {type' = type', value = value, allowedPattern = Prelude.Nothing,
       dataType = Prelude.Nothing, description = Prelude.Nothing,
       name = Prelude.Nothing, policies = Prelude.Nothing,
       tags = Prelude.Nothing, tier = Prelude.Nothing}
instance ToResourceProperties Parameter where
  toResourceProperties Parameter {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Parameter", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type', "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedPattern" Prelude.<$> allowedPattern,
                               (JSON..=) "DataType" Prelude.<$> dataType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Policies" Prelude.<$> policies,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Tier" Prelude.<$> tier]))}
instance JSON.ToJSON Parameter where
  toJSON Parameter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type', "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedPattern" Prelude.<$> allowedPattern,
                  (JSON..=) "DataType" Prelude.<$> dataType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Policies" Prelude.<$> policies,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Tier" Prelude.<$> tier])))
instance Property "AllowedPattern" Parameter where
  type PropertyType "AllowedPattern" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {allowedPattern = Prelude.pure newValue, ..}
instance Property "DataType" Parameter where
  type PropertyType "DataType" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {dataType = Prelude.pure newValue, ..}
instance Property "Description" Parameter where
  type PropertyType "Description" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {description = Prelude.pure newValue, ..}
instance Property "Name" Parameter where
  type PropertyType "Name" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {name = Prelude.pure newValue, ..}
instance Property "Policies" Parameter where
  type PropertyType "Policies" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {policies = Prelude.pure newValue, ..}
instance Property "Tags" Parameter where
  type PropertyType "Tags" Parameter = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Parameter {..}
    = Parameter {tags = Prelude.pure newValue, ..}
instance Property "Tier" Parameter where
  type PropertyType "Tier" Parameter = Value Prelude.Text
  set newValue Parameter {..}
    = Parameter {tier = Prelude.pure newValue, ..}
instance Property "Type" Parameter where
  type PropertyType "Type" Parameter = Value Prelude.Text
  set newValue Parameter {..} = Parameter {type' = newValue, ..}
instance Property "Value" Parameter where
  type PropertyType "Value" Parameter = Value Prelude.Text
  set newValue Parameter {..} = Parameter {value = newValue, ..}