module Stratosphere.SecurityHub.Standard (
        module Exports, Standard(..), mkStandard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.Standard.StandardsControlProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Standard
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-standard.html>
    Standard {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-standard.html#cfn-securityhub-standard-disabledstandardscontrols>
              disabledStandardsControls :: (Prelude.Maybe [StandardsControlProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-standard.html#cfn-securityhub-standard-standardsarn>
              standardsArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStandard :: Value Prelude.Text -> Standard
mkStandard standardsArn
  = Standard
      {haddock_workaround_ = (), standardsArn = standardsArn,
       disabledStandardsControls = Prelude.Nothing}
instance ToResourceProperties Standard where
  toResourceProperties Standard {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Standard",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StandardsArn" JSON..= standardsArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DisabledStandardsControls"
                                 Prelude.<$> disabledStandardsControls]))}
instance JSON.ToJSON Standard where
  toJSON Standard {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StandardsArn" JSON..= standardsArn]
              (Prelude.catMaybes
                 [(JSON..=) "DisabledStandardsControls"
                    Prelude.<$> disabledStandardsControls])))
instance Property "DisabledStandardsControls" Standard where
  type PropertyType "DisabledStandardsControls" Standard = [StandardsControlProperty]
  set newValue Standard {..}
    = Standard {disabledStandardsControls = Prelude.pure newValue, ..}
instance Property "StandardsArn" Standard where
  type PropertyType "StandardsArn" Standard = Value Prelude.Text
  set newValue Standard {..} = Standard {standardsArn = newValue, ..}