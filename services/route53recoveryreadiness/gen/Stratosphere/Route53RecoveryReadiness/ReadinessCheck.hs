module Stratosphere.Route53RecoveryReadiness.ReadinessCheck (
        ReadinessCheck(..), mkReadinessCheck
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReadinessCheck
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-readinesscheck.html>
    ReadinessCheck {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-readinesscheck.html#cfn-route53recoveryreadiness-readinesscheck-readinesscheckname>
                    readinessCheckName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-readinesscheck.html#cfn-route53recoveryreadiness-readinesscheck-resourcesetname>
                    resourceSetName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-readinesscheck.html#cfn-route53recoveryreadiness-readinesscheck-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadinessCheck :: ReadinessCheck
mkReadinessCheck
  = ReadinessCheck
      {haddock_workaround_ = (), readinessCheckName = Prelude.Nothing,
       resourceSetName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ReadinessCheck where
  toResourceProperties ReadinessCheck {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ReadinessCheck",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadinessCheckName" Prelude.<$> readinessCheckName,
                            (JSON..=) "ResourceSetName" Prelude.<$> resourceSetName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ReadinessCheck where
  toJSON ReadinessCheck {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadinessCheckName" Prelude.<$> readinessCheckName,
               (JSON..=) "ResourceSetName" Prelude.<$> resourceSetName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ReadinessCheckName" ReadinessCheck where
  type PropertyType "ReadinessCheckName" ReadinessCheck = Value Prelude.Text
  set newValue ReadinessCheck {..}
    = ReadinessCheck {readinessCheckName = Prelude.pure newValue, ..}
instance Property "ResourceSetName" ReadinessCheck where
  type PropertyType "ResourceSetName" ReadinessCheck = Value Prelude.Text
  set newValue ReadinessCheck {..}
    = ReadinessCheck {resourceSetName = Prelude.pure newValue, ..}
instance Property "Tags" ReadinessCheck where
  type PropertyType "Tags" ReadinessCheck = [Tag]
  set newValue ReadinessCheck {..}
    = ReadinessCheck {tags = Prelude.pure newValue, ..}