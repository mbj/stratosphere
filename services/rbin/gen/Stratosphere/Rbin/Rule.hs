module Stratosphere.Rbin.Rule (
        module Exports, Rule(..), mkRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Rbin.Rule.ResourceTagProperty as Exports
import {-# SOURCE #-} Stratosphere.Rbin.Rule.RetentionPeriodProperty as Exports
import {-# SOURCE #-} Stratosphere.Rbin.Rule.UnlockDelayProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Rule
  = Rule {description :: (Prelude.Maybe (Value Prelude.Text)),
          excludeResourceTags :: (Prelude.Maybe [ResourceTagProperty]),
          lockConfiguration :: (Prelude.Maybe UnlockDelayProperty),
          resourceTags :: (Prelude.Maybe [ResourceTagProperty]),
          resourceType :: (Value Prelude.Text),
          retentionPeriod :: RetentionPeriodProperty,
          status :: (Prelude.Maybe (Value Prelude.Text)),
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRule :: Value Prelude.Text -> RetentionPeriodProperty -> Rule
mkRule resourceType retentionPeriod
  = Rule
      {resourceType = resourceType, retentionPeriod = retentionPeriod,
       description = Prelude.Nothing,
       excludeResourceTags = Prelude.Nothing,
       lockConfiguration = Prelude.Nothing,
       resourceTags = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Rule where
  toResourceProperties Rule {..}
    = ResourceProperties
        {awsType = "AWS::Rbin::Rule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType,
                            "RetentionPeriod" JSON..= retentionPeriod]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExcludeResourceTags" Prelude.<$> excludeResourceTags,
                               (JSON..=) "LockConfiguration" Prelude.<$> lockConfiguration,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Rule where
  toJSON Rule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType,
               "RetentionPeriod" JSON..= retentionPeriod]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExcludeResourceTags" Prelude.<$> excludeResourceTags,
                  (JSON..=) "LockConfiguration" Prelude.<$> lockConfiguration,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Rule where
  type PropertyType "Description" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {description = Prelude.pure newValue, ..}
instance Property "ExcludeResourceTags" Rule where
  type PropertyType "ExcludeResourceTags" Rule = [ResourceTagProperty]
  set newValue Rule {..}
    = Rule {excludeResourceTags = Prelude.pure newValue, ..}
instance Property "LockConfiguration" Rule where
  type PropertyType "LockConfiguration" Rule = UnlockDelayProperty
  set newValue Rule {..}
    = Rule {lockConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceTags" Rule where
  type PropertyType "ResourceTags" Rule = [ResourceTagProperty]
  set newValue Rule {..}
    = Rule {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" Rule where
  type PropertyType "ResourceType" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {resourceType = newValue, ..}
instance Property "RetentionPeriod" Rule where
  type PropertyType "RetentionPeriod" Rule = RetentionPeriodProperty
  set newValue Rule {..} = Rule {retentionPeriod = newValue, ..}
instance Property "Status" Rule where
  type PropertyType "Status" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {status = Prelude.pure newValue, ..}
instance Property "Tags" Rule where
  type PropertyType "Tags" Rule = [Tag]
  set newValue Rule {..} = Rule {tags = Prelude.pure newValue, ..}