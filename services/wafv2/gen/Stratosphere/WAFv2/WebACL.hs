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
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.DefaultActionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.VisibilityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WebACL
  = WebACL {associationConfig :: (Prelude.Maybe AssociationConfigProperty),
            captchaConfig :: (Prelude.Maybe CaptchaConfigProperty),
            challengeConfig :: (Prelude.Maybe ChallengeConfigProperty),
            customResponseBodies :: (Prelude.Maybe (Prelude.Map Prelude.Text CustomResponseBodyProperty)),
            defaultAction :: DefaultActionProperty,
            description :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Prelude.Maybe (Value Prelude.Text)),
            rules :: (Prelude.Maybe [RuleProperty]),
            scope :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag]),
            tokenDomains :: (Prelude.Maybe (ValueList Prelude.Text)),
            visibilityConfig :: VisibilityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACL ::
  DefaultActionProperty
  -> Value Prelude.Text -> VisibilityConfigProperty -> WebACL
mkWebACL defaultAction scope visibilityConfig
  = WebACL
      {defaultAction = defaultAction, scope = scope,
       visibilityConfig = visibilityConfig,
       associationConfig = Prelude.Nothing,
       captchaConfig = Prelude.Nothing, challengeConfig = Prelude.Nothing,
       customResponseBodies = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
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
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
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
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
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