module Stratosphere.RUM.AppMonitor.ResourcePolicyProperty (
        ResourcePolicyProperty(..), mkResourcePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourcePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-resourcepolicy.html>
    ResourcePolicyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-resourcepolicy.html#cfn-rum-appmonitor-resourcepolicy-policydocument>
                            policyDocument :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-resourcepolicy.html#cfn-rum-appmonitor-resourcepolicy-policyrevisionid>
                            policyRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourcePolicyProperty ::
  Value Prelude.Text -> ResourcePolicyProperty
mkResourcePolicyProperty policyDocument
  = ResourcePolicyProperty
      {haddock_workaround_ = (), policyDocument = policyDocument,
       policyRevisionId = Prelude.Nothing}
instance ToResourceProperties ResourcePolicyProperty where
  toResourceProperties ResourcePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.ResourcePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyRevisionId" Prelude.<$> policyRevisionId]))}
instance JSON.ToJSON ResourcePolicyProperty where
  toJSON ResourcePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyRevisionId" Prelude.<$> policyRevisionId])))
instance Property "PolicyDocument" ResourcePolicyProperty where
  type PropertyType "PolicyDocument" ResourcePolicyProperty = Value Prelude.Text
  set newValue ResourcePolicyProperty {..}
    = ResourcePolicyProperty {policyDocument = newValue, ..}
instance Property "PolicyRevisionId" ResourcePolicyProperty where
  type PropertyType "PolicyRevisionId" ResourcePolicyProperty = Value Prelude.Text
  set newValue ResourcePolicyProperty {..}
    = ResourcePolicyProperty
        {policyRevisionId = Prelude.pure newValue, ..}