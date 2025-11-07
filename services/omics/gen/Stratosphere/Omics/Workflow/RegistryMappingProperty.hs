module Stratosphere.Omics.Workflow.RegistryMappingProperty (
        RegistryMappingProperty(..), mkRegistryMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-registrymapping.html>
    RegistryMappingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-registrymapping.html#cfn-omics-workflow-registrymapping-ecraccountid>
                             ecrAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-registrymapping.html#cfn-omics-workflow-registrymapping-ecrrepositoryprefix>
                             ecrRepositoryPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-registrymapping.html#cfn-omics-workflow-registrymapping-upstreamregistryurl>
                             upstreamRegistryUrl :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflow-registrymapping.html#cfn-omics-workflow-registrymapping-upstreamrepositoryprefix>
                             upstreamRepositoryPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistryMappingProperty :: RegistryMappingProperty
mkRegistryMappingProperty
  = RegistryMappingProperty
      {haddock_workaround_ = (), ecrAccountId = Prelude.Nothing,
       ecrRepositoryPrefix = Prelude.Nothing,
       upstreamRegistryUrl = Prelude.Nothing,
       upstreamRepositoryPrefix = Prelude.Nothing}
instance ToResourceProperties RegistryMappingProperty where
  toResourceProperties RegistryMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::Workflow.RegistryMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EcrAccountId" Prelude.<$> ecrAccountId,
                            (JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
                            (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl,
                            (JSON..=) "UpstreamRepositoryPrefix"
                              Prelude.<$> upstreamRepositoryPrefix])}
instance JSON.ToJSON RegistryMappingProperty where
  toJSON RegistryMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EcrAccountId" Prelude.<$> ecrAccountId,
               (JSON..=) "EcrRepositoryPrefix" Prelude.<$> ecrRepositoryPrefix,
               (JSON..=) "UpstreamRegistryUrl" Prelude.<$> upstreamRegistryUrl,
               (JSON..=) "UpstreamRepositoryPrefix"
                 Prelude.<$> upstreamRepositoryPrefix]))
instance Property "EcrAccountId" RegistryMappingProperty where
  type PropertyType "EcrAccountId" RegistryMappingProperty = Value Prelude.Text
  set newValue RegistryMappingProperty {..}
    = RegistryMappingProperty
        {ecrAccountId = Prelude.pure newValue, ..}
instance Property "EcrRepositoryPrefix" RegistryMappingProperty where
  type PropertyType "EcrRepositoryPrefix" RegistryMappingProperty = Value Prelude.Text
  set newValue RegistryMappingProperty {..}
    = RegistryMappingProperty
        {ecrRepositoryPrefix = Prelude.pure newValue, ..}
instance Property "UpstreamRegistryUrl" RegistryMappingProperty where
  type PropertyType "UpstreamRegistryUrl" RegistryMappingProperty = Value Prelude.Text
  set newValue RegistryMappingProperty {..}
    = RegistryMappingProperty
        {upstreamRegistryUrl = Prelude.pure newValue, ..}
instance Property "UpstreamRepositoryPrefix" RegistryMappingProperty where
  type PropertyType "UpstreamRepositoryPrefix" RegistryMappingProperty = Value Prelude.Text
  set newValue RegistryMappingProperty {..}
    = RegistryMappingProperty
        {upstreamRepositoryPrefix = Prelude.pure newValue, ..}