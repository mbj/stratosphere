module Stratosphere.IoTAnalytics.Pipeline.MathProperty (
        MathProperty(..), mkMathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MathProperty
  = MathProperty {attribute :: (Value Prelude.Text),
                  math :: (Value Prelude.Text),
                  name :: (Value Prelude.Text),
                  next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMathProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MathProperty
mkMathProperty attribute math name
  = MathProperty
      {attribute = attribute, math = math, name = name,
       next = Prelude.Nothing}
instance ToResourceProperties MathProperty where
  toResourceProperties MathProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Math",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attribute" JSON..= attribute, "Math" JSON..= math,
                            "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON MathProperty where
  toJSON MathProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attribute" JSON..= attribute, "Math" JSON..= math,
               "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "Attribute" MathProperty where
  type PropertyType "Attribute" MathProperty = Value Prelude.Text
  set newValue MathProperty {..}
    = MathProperty {attribute = newValue, ..}
instance Property "Math" MathProperty where
  type PropertyType "Math" MathProperty = Value Prelude.Text
  set newValue MathProperty {..} = MathProperty {math = newValue, ..}
instance Property "Name" MathProperty where
  type PropertyType "Name" MathProperty = Value Prelude.Text
  set newValue MathProperty {..} = MathProperty {name = newValue, ..}
instance Property "Next" MathProperty where
  type PropertyType "Next" MathProperty = Value Prelude.Text
  set newValue MathProperty {..}
    = MathProperty {next = Prelude.pure newValue, ..}