module Stratosphere.XRay.Group (
        module Exports, Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.XRay.Group.InsightsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.XRay.Group.TagsItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Group
  = Group {filterExpression :: (Prelude.Maybe (Value Prelude.Text)),
           groupName :: (Prelude.Maybe (Value Prelude.Text)),
           insightsConfiguration :: (Prelude.Maybe InsightsConfigurationProperty),
           tags :: (Prelude.Maybe [TagsItemsProperty])}
mkGroup :: Group
mkGroup
  = Group
      {filterExpression = Prelude.Nothing, groupName = Prelude.Nothing,
       insightsConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::XRay::Group",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterExpression" Prelude.<$> filterExpression,
                            (JSON..=) "GroupName" Prelude.<$> groupName,
                            (JSON..=) "InsightsConfiguration"
                              Prelude.<$> insightsConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterExpression" Prelude.<$> filterExpression,
               (JSON..=) "GroupName" Prelude.<$> groupName,
               (JSON..=) "InsightsConfiguration"
                 Prelude.<$> insightsConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "FilterExpression" Group where
  type PropertyType "FilterExpression" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {filterExpression = Prelude.pure newValue, ..}
instance Property "GroupName" Group where
  type PropertyType "GroupName" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {groupName = Prelude.pure newValue, ..}
instance Property "InsightsConfiguration" Group where
  type PropertyType "InsightsConfiguration" Group = InsightsConfigurationProperty
  set newValue Group {..}
    = Group {insightsConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Group where
  type PropertyType "Tags" Group = [TagsItemsProperty]
  set newValue Group {..} = Group {tags = Prelude.pure newValue, ..}