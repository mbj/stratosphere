module Stratosphere.CodeBuild.Project.BatchRestrictionsProperty (
        BatchRestrictionsProperty(..), mkBatchRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchRestrictionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html>
    BatchRestrictionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html#cfn-codebuild-project-batchrestrictions-computetypesallowed>
                               computeTypesAllowed :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html#cfn-codebuild-project-batchrestrictions-maximumbuildsallowed>
                               maximumBuildsAllowed :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchRestrictionsProperty :: BatchRestrictionsProperty
mkBatchRestrictionsProperty
  = BatchRestrictionsProperty
      {haddock_workaround_ = (), computeTypesAllowed = Prelude.Nothing,
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