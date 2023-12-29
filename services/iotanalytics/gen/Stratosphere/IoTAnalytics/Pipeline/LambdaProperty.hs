module Stratosphere.IoTAnalytics.Pipeline.LambdaProperty (
        LambdaProperty(..), mkLambdaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaProperty
  = LambdaProperty {batchSize :: (Value Prelude.Integer),
                    lambdaName :: (Value Prelude.Text),
                    name :: (Value Prelude.Text),
                    next :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Text -> LambdaProperty
mkLambdaProperty batchSize lambdaName name
  = LambdaProperty
      {batchSize = batchSize, lambdaName = lambdaName, name = name,
       next = Prelude.Nothing}
instance ToResourceProperties LambdaProperty where
  toResourceProperties LambdaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Lambda",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BatchSize" JSON..= batchSize, "LambdaName" JSON..= lambdaName,
                            "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next]))}
instance JSON.ToJSON LambdaProperty where
  toJSON LambdaProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BatchSize" JSON..= batchSize, "LambdaName" JSON..= lambdaName,
               "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Next" Prelude.<$> next])))
instance Property "BatchSize" LambdaProperty where
  type PropertyType "BatchSize" LambdaProperty = Value Prelude.Integer
  set newValue LambdaProperty {..}
    = LambdaProperty {batchSize = newValue, ..}
instance Property "LambdaName" LambdaProperty where
  type PropertyType "LambdaName" LambdaProperty = Value Prelude.Text
  set newValue LambdaProperty {..}
    = LambdaProperty {lambdaName = newValue, ..}
instance Property "Name" LambdaProperty where
  type PropertyType "Name" LambdaProperty = Value Prelude.Text
  set newValue LambdaProperty {..}
    = LambdaProperty {name = newValue, ..}
instance Property "Next" LambdaProperty where
  type PropertyType "Next" LambdaProperty = Value Prelude.Text
  set newValue LambdaProperty {..}
    = LambdaProperty {next = Prelude.pure newValue, ..}