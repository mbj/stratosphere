module Stratosphere.ResourceGroups.Group.ResourceQueryProperty (
        module Exports, ResourceQueryProperty(..), mkResourceQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.QueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html>
    ResourceQueryProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-query>
                           query :: (Prelude.Maybe QueryProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-type>
                           type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceQueryProperty :: ResourceQueryProperty
mkResourceQueryProperty
  = ResourceQueryProperty
      {haddock_workaround_ = (), query = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ResourceQueryProperty where
  toResourceProperties ResourceQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.ResourceQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Query" Prelude.<$> query,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ResourceQueryProperty where
  toJSON ResourceQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Query" Prelude.<$> query,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Query" ResourceQueryProperty where
  type PropertyType "Query" ResourceQueryProperty = QueryProperty
  set newValue ResourceQueryProperty {..}
    = ResourceQueryProperty {query = Prelude.pure newValue, ..}
instance Property "Type" ResourceQueryProperty where
  type PropertyType "Type" ResourceQueryProperty = Value Prelude.Text
  set newValue ResourceQueryProperty {..}
    = ResourceQueryProperty {type' = Prelude.pure newValue, ..}