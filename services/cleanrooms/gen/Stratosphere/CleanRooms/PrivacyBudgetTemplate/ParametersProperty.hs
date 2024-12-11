module Stratosphere.CleanRooms.PrivacyBudgetTemplate.ParametersProperty (
        ParametersProperty(..), mkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParametersProperty
  = ParametersProperty {epsilon :: (Value Prelude.Integer),
                        usersNoisePerQuery :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParametersProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ParametersProperty
mkParametersProperty epsilon usersNoisePerQuery
  = ParametersProperty
      {epsilon = epsilon, usersNoisePerQuery = usersNoisePerQuery}
instance ToResourceProperties ParametersProperty where
  toResourceProperties ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::PrivacyBudgetTemplate.Parameters",
         supportsTags = Prelude.False,
         properties = ["Epsilon" JSON..= epsilon,
                       "UsersNoisePerQuery" JSON..= usersNoisePerQuery]}
instance JSON.ToJSON ParametersProperty where
  toJSON ParametersProperty {..}
    = JSON.object
        ["Epsilon" JSON..= epsilon,
         "UsersNoisePerQuery" JSON..= usersNoisePerQuery]
instance Property "Epsilon" ParametersProperty where
  type PropertyType "Epsilon" ParametersProperty = Value Prelude.Integer
  set newValue ParametersProperty {..}
    = ParametersProperty {epsilon = newValue, ..}
instance Property "UsersNoisePerQuery" ParametersProperty where
  type PropertyType "UsersNoisePerQuery" ParametersProperty = Value Prelude.Integer
  set newValue ParametersProperty {..}
    = ParametersProperty {usersNoisePerQuery = newValue, ..}