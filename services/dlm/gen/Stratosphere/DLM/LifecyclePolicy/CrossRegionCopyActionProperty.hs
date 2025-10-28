module Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyActionProperty (
        module Exports, CrossRegionCopyActionProperty(..),
        mkCrossRegionCopyActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyRetainRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossRegionCopyActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyaction.html>
    CrossRegionCopyActionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyaction.html#cfn-dlm-lifecyclepolicy-crossregioncopyaction-encryptionconfiguration>
                                   encryptionConfiguration :: EncryptionConfigurationProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyaction.html#cfn-dlm-lifecyclepolicy-crossregioncopyaction-retainrule>
                                   retainRule :: (Prelude.Maybe CrossRegionCopyRetainRuleProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyaction.html#cfn-dlm-lifecyclepolicy-crossregioncopyaction-target>
                                   target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossRegionCopyActionProperty ::
  EncryptionConfigurationProperty
  -> Value Prelude.Text -> CrossRegionCopyActionProperty
mkCrossRegionCopyActionProperty encryptionConfiguration target
  = CrossRegionCopyActionProperty
      {haddock_workaround_ = (),
       encryptionConfiguration = encryptionConfiguration, target = target,
       retainRule = Prelude.Nothing}
instance ToResourceProperties CrossRegionCopyActionProperty where
  toResourceProperties CrossRegionCopyActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionConfiguration" JSON..= encryptionConfiguration,
                            "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "RetainRule" Prelude.<$> retainRule]))}
instance JSON.ToJSON CrossRegionCopyActionProperty where
  toJSON CrossRegionCopyActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionConfiguration" JSON..= encryptionConfiguration,
               "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "RetainRule" Prelude.<$> retainRule])))
instance Property "EncryptionConfiguration" CrossRegionCopyActionProperty where
  type PropertyType "EncryptionConfiguration" CrossRegionCopyActionProperty = EncryptionConfigurationProperty
  set newValue CrossRegionCopyActionProperty {..}
    = CrossRegionCopyActionProperty
        {encryptionConfiguration = newValue, ..}
instance Property "RetainRule" CrossRegionCopyActionProperty where
  type PropertyType "RetainRule" CrossRegionCopyActionProperty = CrossRegionCopyRetainRuleProperty
  set newValue CrossRegionCopyActionProperty {..}
    = CrossRegionCopyActionProperty
        {retainRule = Prelude.pure newValue, ..}
instance Property "Target" CrossRegionCopyActionProperty where
  type PropertyType "Target" CrossRegionCopyActionProperty = Value Prelude.Text
  set newValue CrossRegionCopyActionProperty {..}
    = CrossRegionCopyActionProperty {target = newValue, ..}