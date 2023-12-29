module Stratosphere.CodeBuild.Project.BatchRestrictionsProperty (
        BatchRestrictionsProperty(..), mkBatchRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchRestrictionsProperty
  = BatchRestrictionsProperty {computeTypesAllowed :: (Prelude.Maybe (ValueList Prelude.Text)),
                               maximumBuildsAllowed :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchRestrictionsProperty :: BatchRestrictionsProperty
mkBatchRestrictionsProperty
  = BatchRestrictionsProperty
      {computeTypesAllowed = Prelude.Nothing,
       maximumBuildsAllowed = Prelude.Nothing}
instance ToResourceProperties BatchRestrictionsProperty where
  toResourceProperties BatchRestrictionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.BatchRestrictions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeTypesAllowed" Prelude.<$> computeTypesAllowed,
                            (JSON..=) "MaximumBuildsAllowed"
                              Prelude.<$> maximumBuildsAllowed])}
instance JSON.ToJSON BatchRestrictionsProperty where
  toJSON BatchRestrictionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeTypesAllowed" Prelude.<$> computeTypesAllowed,
               (JSON..=) "MaximumBuildsAllowed"
                 Prelude.<$> maximumBuildsAllowed]))
instance Property "ComputeTypesAllowed" BatchRestrictionsProperty where
  type PropertyType "ComputeTypesAllowed" BatchRestrictionsProperty = ValueList Prelude.Text
  set newValue BatchRestrictionsProperty {..}
    = BatchRestrictionsProperty
        {computeTypesAllowed = Prelude.pure newValue, ..}
instance Property "MaximumBuildsAllowed" BatchRestrictionsProperty where
  type PropertyType "MaximumBuildsAllowed" BatchRestrictionsProperty = Value Prelude.Integer
  set newValue BatchRestrictionsProperty {..}
    = BatchRestrictionsProperty
        {maximumBuildsAllowed = Prelude.pure newValue, ..}