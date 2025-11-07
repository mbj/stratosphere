module Stratosphere.Batch.JobDefinition.ResourceRetentionPolicyProperty (
        ResourceRetentionPolicyProperty(..),
        mkResourceRetentionPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceRetentionPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourceretentionpolicy.html>
    ResourceRetentionPolicyProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourceretentionpolicy.html#cfn-batch-jobdefinition-resourceretentionpolicy-skipderegisteronupdate>
                                     skipDeregisterOnUpdate :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceRetentionPolicyProperty ::
  ResourceRetentionPolicyProperty
mkResourceRetentionPolicyProperty
  = ResourceRetentionPolicyProperty
      {haddock_workaround_ = (),
       skipDeregisterOnUpdate = Prelude.Nothing}
instance ToResourceProperties ResourceRetentionPolicyProperty where
  toResourceProperties ResourceRetentionPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ResourceRetentionPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SkipDeregisterOnUpdate"
                              Prelude.<$> skipDeregisterOnUpdate])}
instance JSON.ToJSON ResourceRetentionPolicyProperty where
  toJSON ResourceRetentionPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SkipDeregisterOnUpdate"
                 Prelude.<$> skipDeregisterOnUpdate]))
instance Property "SkipDeregisterOnUpdate" ResourceRetentionPolicyProperty where
  type PropertyType "SkipDeregisterOnUpdate" ResourceRetentionPolicyProperty = Value Prelude.Bool
  set newValue ResourceRetentionPolicyProperty {..}
    = ResourceRetentionPolicyProperty
        {skipDeregisterOnUpdate = Prelude.pure newValue, ..}