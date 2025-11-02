module Stratosphere.EventSchemas.RegistryPolicy (
        RegistryPolicy(..), mkRegistryPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html>
    RegistryPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-policy>
                    policy :: JSON.Object,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-registryname>
                    registryName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registrypolicy.html#cfn-eventschemas-registrypolicy-revisionid>
                    revisionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistryPolicy ::
  JSON.Object -> Value Prelude.Text -> RegistryPolicy
mkRegistryPolicy policy registryName
  = RegistryPolicy
      {haddock_workaround_ = (), policy = policy,
       registryName = registryName, revisionId = Prelude.Nothing}
instance ToResourceProperties RegistryPolicy where
  toResourceProperties RegistryPolicy {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::RegistryPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Policy" JSON..= policy, "RegistryName" JSON..= registryName]
                           (Prelude.catMaybes
                              [(JSON..=) "RevisionId" Prelude.<$> revisionId]))}
instance JSON.ToJSON RegistryPolicy where
  toJSON RegistryPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Policy" JSON..= policy, "RegistryName" JSON..= registryName]
              (Prelude.catMaybes
                 [(JSON..=) "RevisionId" Prelude.<$> revisionId])))
instance Property "Policy" RegistryPolicy where
  type PropertyType "Policy" RegistryPolicy = JSON.Object
  set newValue RegistryPolicy {..}
    = RegistryPolicy {policy = newValue, ..}
instance Property "RegistryName" RegistryPolicy where
  type PropertyType "RegistryName" RegistryPolicy = Value Prelude.Text
  set newValue RegistryPolicy {..}
    = RegistryPolicy {registryName = newValue, ..}
instance Property "RevisionId" RegistryPolicy where
  type PropertyType "RevisionId" RegistryPolicy = Value Prelude.Text
  set newValue RegistryPolicy {..}
    = RegistryPolicy {revisionId = Prelude.pure newValue, ..}