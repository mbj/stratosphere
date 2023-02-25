module Stratosphere.SageMaker.ModelCard.BusinessDetailsProperty (
        BusinessDetailsProperty(..), mkBusinessDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BusinessDetailsProperty
  = BusinessDetailsProperty {businessProblem :: (Prelude.Maybe (Value Prelude.Text)),
                             businessStakeholders :: (Prelude.Maybe (Value Prelude.Text)),
                             lineOfBusiness :: (Prelude.Maybe (Value Prelude.Text))}
mkBusinessDetailsProperty :: BusinessDetailsProperty
mkBusinessDetailsProperty
  = BusinessDetailsProperty
      {businessProblem = Prelude.Nothing,
       businessStakeholders = Prelude.Nothing,
       lineOfBusiness = Prelude.Nothing}
instance ToResourceProperties BusinessDetailsProperty where
  toResourceProperties BusinessDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.BusinessDetails",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BusinessProblem" Prelude.<$> businessProblem,
                            (JSON..=) "BusinessStakeholders" Prelude.<$> businessStakeholders,
                            (JSON..=) "LineOfBusiness" Prelude.<$> lineOfBusiness])}
instance JSON.ToJSON BusinessDetailsProperty where
  toJSON BusinessDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BusinessProblem" Prelude.<$> businessProblem,
               (JSON..=) "BusinessStakeholders" Prelude.<$> businessStakeholders,
               (JSON..=) "LineOfBusiness" Prelude.<$> lineOfBusiness]))
instance Property "BusinessProblem" BusinessDetailsProperty where
  type PropertyType "BusinessProblem" BusinessDetailsProperty = Value Prelude.Text
  set newValue BusinessDetailsProperty {..}
    = BusinessDetailsProperty
        {businessProblem = Prelude.pure newValue, ..}
instance Property "BusinessStakeholders" BusinessDetailsProperty where
  type PropertyType "BusinessStakeholders" BusinessDetailsProperty = Value Prelude.Text
  set newValue BusinessDetailsProperty {..}
    = BusinessDetailsProperty
        {businessStakeholders = Prelude.pure newValue, ..}
instance Property "LineOfBusiness" BusinessDetailsProperty where
  type PropertyType "LineOfBusiness" BusinessDetailsProperty = Value Prelude.Text
  set newValue BusinessDetailsProperty {..}
    = BusinessDetailsProperty
        {lineOfBusiness = Prelude.pure newValue, ..}