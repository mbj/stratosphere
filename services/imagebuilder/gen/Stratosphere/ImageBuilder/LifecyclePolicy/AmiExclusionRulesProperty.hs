module Stratosphere.ImageBuilder.LifecyclePolicy.AmiExclusionRulesProperty (
        module Exports, AmiExclusionRulesProperty(..),
        mkAmiExclusionRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.LifecyclePolicy.LastLaunchedProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmiExclusionRulesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html>
    AmiExclusionRulesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html#cfn-imagebuilder-lifecyclepolicy-amiexclusionrules-ispublic>
                               isPublic :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html#cfn-imagebuilder-lifecyclepolicy-amiexclusionrules-lastlaunched>
                               lastLaunched :: (Prelude.Maybe LastLaunchedProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html#cfn-imagebuilder-lifecyclepolicy-amiexclusionrules-regions>
                               regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html#cfn-imagebuilder-lifecyclepolicy-amiexclusionrules-sharedaccounts>
                               sharedAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-amiexclusionrules.html#cfn-imagebuilder-lifecyclepolicy-amiexclusionrules-tagmap>
                               tagMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmiExclusionRulesProperty :: AmiExclusionRulesProperty
mkAmiExclusionRulesProperty
  = AmiExclusionRulesProperty
      {haddock_workaround_ = (), isPublic = Prelude.Nothing,
       lastLaunched = Prelude.Nothing, regions = Prelude.Nothing,
       sharedAccounts = Prelude.Nothing, tagMap = Prelude.Nothing}
instance ToResourceProperties AmiExclusionRulesProperty where
  toResourceProperties AmiExclusionRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.AmiExclusionRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsPublic" Prelude.<$> isPublic,
                            (JSON..=) "LastLaunched" Prelude.<$> lastLaunched,
                            (JSON..=) "Regions" Prelude.<$> regions,
                            (JSON..=) "SharedAccounts" Prelude.<$> sharedAccounts,
                            (JSON..=) "TagMap" Prelude.<$> tagMap])}
instance JSON.ToJSON AmiExclusionRulesProperty where
  toJSON AmiExclusionRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsPublic" Prelude.<$> isPublic,
               (JSON..=) "LastLaunched" Prelude.<$> lastLaunched,
               (JSON..=) "Regions" Prelude.<$> regions,
               (JSON..=) "SharedAccounts" Prelude.<$> sharedAccounts,
               (JSON..=) "TagMap" Prelude.<$> tagMap]))
instance Property "IsPublic" AmiExclusionRulesProperty where
  type PropertyType "IsPublic" AmiExclusionRulesProperty = Value Prelude.Bool
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {isPublic = Prelude.pure newValue, ..}
instance Property "LastLaunched" AmiExclusionRulesProperty where
  type PropertyType "LastLaunched" AmiExclusionRulesProperty = LastLaunchedProperty
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty
        {lastLaunched = Prelude.pure newValue, ..}
instance Property "Regions" AmiExclusionRulesProperty where
  type PropertyType "Regions" AmiExclusionRulesProperty = ValueList Prelude.Text
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {regions = Prelude.pure newValue, ..}
instance Property "SharedAccounts" AmiExclusionRulesProperty where
  type PropertyType "SharedAccounts" AmiExclusionRulesProperty = ValueList Prelude.Text
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty
        {sharedAccounts = Prelude.pure newValue, ..}
instance Property "TagMap" AmiExclusionRulesProperty where
  type PropertyType "TagMap" AmiExclusionRulesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AmiExclusionRulesProperty {..}
    = AmiExclusionRulesProperty {tagMap = Prelude.pure newValue, ..}