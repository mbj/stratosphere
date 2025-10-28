module Stratosphere.XRay.Group (
        module Exports, Group(..), mkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.XRay.Group.InsightsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Group
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-group.html>
    Group {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-group.html#cfn-xray-group-filterexpression>
           filterExpression :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-group.html#cfn-xray-group-groupname>
           groupName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-group.html#cfn-xray-group-insightsconfiguration>
           insightsConfiguration :: (Prelude.Maybe InsightsConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-xray-group.html#cfn-xray-group-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroup :: Value Prelude.Text -> Group
mkGroup groupName
  = Group
      {haddock_workaround_ = (), groupName = groupName,
       filterExpression = Prelude.Nothing,
       insightsConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Group where
  toResourceProperties Group {..}
    = ResourceProperties
        {awsType = "AWS::XRay::Group", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupName" JSON..= groupName]
                           (Prelude.catMaybes
                              [(JSON..=) "FilterExpression" Prelude.<$> filterExpression,
                               (JSON..=) "InsightsConfiguration"
                                 Prelude.<$> insightsConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Group where
  toJSON Group {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupName" JSON..= groupName]
              (Prelude.catMaybes
                 [(JSON..=) "FilterExpression" Prelude.<$> filterExpression,
                  (JSON..=) "InsightsConfiguration"
                    Prelude.<$> insightsConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "FilterExpression" Group where
  type PropertyType "FilterExpression" Group = Value Prelude.Text
  set newValue Group {..}
    = Group {filterExpression = Prelude.pure newValue, ..}
instance Property "GroupName" Group where
  type PropertyType "GroupName" Group = Value Prelude.Text
  set newValue Group {..} = Group {groupName = newValue, ..}
instance Property "InsightsConfiguration" Group where
  type PropertyType "InsightsConfiguration" Group = InsightsConfigurationProperty
  set newValue Group {..}
    = Group {insightsConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Group where
  type PropertyType "Tags" Group = [Tag]
  set newValue Group {..} = Group {tags = Prelude.pure newValue, ..}