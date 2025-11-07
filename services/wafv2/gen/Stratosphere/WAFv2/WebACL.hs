module Stratosphere.WAFv2.WebACL (
        module Exports, WebACL(..), mkWebACL
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AssociationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CaptchaConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ChallengeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CustomResponseBodyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.DataProtectionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.DefaultActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.OnSourceDDoSProtectionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.VisibilityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WebACL
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html>
    WebACL {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-associationconfig>
            associationConfig :: (Prelude.Maybe AssociationConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-captchaconfig>
            captchaConfig :: (Prelude.Maybe CaptchaConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-challengeconfig>
            challengeConfig :: (Prelude.Maybe ChallengeConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-customresponsebodies>
            customResponseBodies :: (Prelude.Maybe (Prelude.Map Prelude.Text CustomResponseBodyProperty)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-dataprotectionconfig>
            dataProtectionConfig :: (Prelude.Maybe DataProtectionConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-defaultaction>
            defaultAction :: DefaultActionProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-onsourceddosprotectionconfig>
            onSourceDDoSProtectionConfig :: (Prelude.Maybe OnSourceDDoSProtectionConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-rules>
            rules :: (Prelude.Maybe [RuleProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-scope>
            scope :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-tokendomains>
            tokenDomains :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-visibilityconfig>
            visibilityConfig :: VisibilityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACL ::
  DefaultActionProperty
  -> Value Prelude.Text -> VisibilityConfigProperty -> WebACL
mkWebACL defaultAction scope visibilityConfig
  = WebACL
      {haddock_workaround_ = (), defaultAction = defaultAction,
       scope = scope, visibilityConfig = visibilityConfig,
       associationConfig = Prelude.Nothing,
       captchaConfig = Prelude.Nothing, challengeConfig = Prelude.Nothing,
       customResponseBodies = Prelude.Nothing,
       dataProtectionConfig = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       onSourceDDoSProtectionConfig = Prelude.Nothing,
       rules = Prelude.Nothing, tags = Prelude.Nothing,
       tokenDomains = Prelude.Nothing}
instance ToResourceProperties WebACL where
  toResourceProperties WebACL {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultAction" JSON..= defaultAction, "Scope" JSON..= scope,
                            "VisibilityConfig" JSON..= visibilityConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociationConfig" Prelude.<$> associationConfig,
                               (JSON..=) "CaptchaConfig" Prelude.<$> captchaConfig,
                               (JSON..=) "ChallengeConfig" Prelude.<$> challengeConfig,
                               (JSON..=) "CustomResponseBodies" Prelude.<$> customResponseBodies,
                               (JSON..=) "DataProtectionConfig" Prelude.<$> dataProtectionConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OnSourceDDoSProtectionConfig"
                                 Prelude.<$> onSourceDDoSProtectionConfig,
                               (JSON..=) "Rules" Prelude.<$> rules,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TokenDomains" Prelude.<$> tokenDomains]))}
instance JSON.ToJSON WebACL where
  toJSON WebACL {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultAction" JSON..= defaultAction, "Scope" JSON..= scope,
               "VisibilityConfig" JSON..= visibilityConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AssociationConfig" Prelude.<$> associationConfig,
                  (JSON..=) "CaptchaConfig" Prelude.<$> captchaConfig,
                  (JSON..=) "ChallengeConfig" Prelude.<$> challengeConfig,
                  (JSON..=) "CustomResponseBodies" Prelude.<$> customResponseBodies,
                  (JSON..=) "DataProtectionConfig" Prelude.<$> dataProtectionConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OnSourceDDoSProtectionConfig"
                    Prelude.<$> onSourceDDoSProtectionConfig,
                  (JSON..=) "Rules" Prelude.<$> rules,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TokenDomains" Prelude.<$> tokenDomains])))
instance Property "AssociationConfig" WebACL where
  type PropertyType "AssociationConfig" WebACL = AssociationConfigProperty
  set newValue WebACL {..}
    = WebACL {associationConfig = Prelude.pure newValue, ..}
instance Property "CaptchaConfig" WebACL where
  type PropertyType "CaptchaConfig" WebACL = CaptchaConfigProperty
  set newValue WebACL {..}
    = WebACL {captchaConfig = Prelude.pure newValue, ..}
instance Property "ChallengeConfig" WebACL where
  type PropertyType "ChallengeConfig" WebACL = ChallengeConfigProperty
  set newValue WebACL {..}
    = WebACL {challengeConfig = Prelude.pure newValue, ..}
instance Property "CustomResponseBodies" WebACL where
  type PropertyType "CustomResponseBodies" WebACL = Prelude.Map Prelude.Text CustomResponseBodyProperty
  set newValue WebACL {..}
    = WebACL {customResponseBodies = Prelude.pure newValue, ..}
instance Property "DataProtectionConfig" WebACL where
  type PropertyType "DataProtectionConfig" WebACL = DataProtectionConfigProperty
  set newValue WebACL {..}
    = WebACL {dataProtectionConfig = Prelude.pure newValue, ..}
instance Property "DefaultAction" WebACL where
  type PropertyType "DefaultAction" WebACL = DefaultActionProperty
  set newValue WebACL {..} = WebACL {defaultAction = newValue, ..}
instance Property "Description" WebACL where
  type PropertyType "Description" WebACL = Value Prelude.Text
  set newValue WebACL {..}
    = WebACL {description = Prelude.pure newValue, ..}
instance Property "Name" WebACL where
  type PropertyType "Name" WebACL = Value Prelude.Text
  set newValue WebACL {..}
    = WebACL {name = Prelude.pure newValue, ..}
instance Property "OnSourceDDoSProtectionConfig" WebACL where
  type PropertyType "OnSourceDDoSProtectionConfig" WebACL = OnSourceDDoSProtectionConfigProperty
  set newValue WebACL {..}
    = WebACL {onSourceDDoSProtectionConfig = Prelude.pure newValue, ..}
instance Property "Rules" WebACL where
  type PropertyType "Rules" WebACL = [RuleProperty]
  set newValue WebACL {..}
    = WebACL {rules = Prelude.pure newValue, ..}
instance Property "Scope" WebACL where
  type PropertyType "Scope" WebACL = Value Prelude.Text
  set newValue WebACL {..} = WebACL {scope = newValue, ..}
instance Property "Tags" WebACL where
  type PropertyType "Tags" WebACL = [Tag]
  set newValue WebACL {..}
    = WebACL {tags = Prelude.pure newValue, ..}
instance Property "TokenDomains" WebACL where
  type PropertyType "TokenDomains" WebACL = ValueList Prelude.Text
  set newValue WebACL {..}
    = WebACL {tokenDomains = Prelude.pure newValue, ..}
instance Property "VisibilityConfig" WebACL where
  type PropertyType "VisibilityConfig" WebACL = VisibilityConfigProperty
  set newValue WebACL {..} = WebACL {visibilityConfig = newValue, ..}