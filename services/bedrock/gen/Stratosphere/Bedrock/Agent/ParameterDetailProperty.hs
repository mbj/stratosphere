module Stratosphere.Bedrock.Agent.ParameterDetailProperty (
        ParameterDetailProperty(..), mkParameterDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDetailProperty
  = ParameterDetailProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                             required :: (Prelude.Maybe (Value Prelude.Bool)),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDetailProperty ::
  Value Prelude.Text -> ParameterDetailProperty
mkParameterDetailProperty type'
  = ParameterDetailProperty
      {type' = type', description = Prelude.Nothing,
       required = Prelude.Nothing}
instance ToResourceProperties ParameterDetailProperty where
  toResourceProperties ParameterDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.ParameterDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Required" Prelude.<$> required]))}
instance JSON.ToJSON ParameterDetailProperty where
  toJSON ParameterDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Required" Prelude.<$> required])))
instance Property "Description" ParameterDetailProperty where
  type PropertyType "Description" ParameterDetailProperty = Value Prelude.Text
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {description = Prelude.pure newValue, ..}
instance Property "Required" ParameterDetailProperty where
  type PropertyType "Required" ParameterDetailProperty = Value Prelude.Bool
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {required = Prelude.pure newValue, ..}
instance Property "Type" ParameterDetailProperty where
  type PropertyType "Type" ParameterDetailProperty = Value Prelude.Text
  set newValue ParameterDetailProperty {..}
    = ParameterDetailProperty {type' = newValue, ..}