module Stratosphere.ResourceGroups.Group.QueryProperty (
        module Exports, QueryProperty(..), mkQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResourceGroups.Group.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html>
    QueryProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-resourcetypefilters>
                   resourceTypeFilters :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-stackidentifier>
                   stackIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-tagfilters>
                   tagFilters :: (Prelude.Maybe [TagFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryProperty :: QueryProperty
mkQueryProperty
  = QueryProperty
      {haddock_workaround_ = (), resourceTypeFilters = Prelude.Nothing,
       stackIdentifier = Prelude.Nothing, tagFilters = Prelude.Nothing}
instance ToResourceProperties QueryProperty where
  toResourceProperties QueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.Query",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceTypeFilters" Prelude.<$> resourceTypeFilters,
                            (JSON..=) "StackIdentifier" Prelude.<$> stackIdentifier,
                            (JSON..=) "TagFilters" Prelude.<$> tagFilters])}
instance JSON.ToJSON QueryProperty where
  toJSON QueryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceTypeFilters" Prelude.<$> resourceTypeFilters,
               (JSON..=) "StackIdentifier" Prelude.<$> stackIdentifier,
               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))
instance Property "ResourceTypeFilters" QueryProperty where
  type PropertyType "ResourceTypeFilters" QueryProperty = ValueList Prelude.Text
  set newValue QueryProperty {..}
    = QueryProperty {resourceTypeFilters = Prelude.pure newValue, ..}
instance Property "StackIdentifier" QueryProperty where
  type PropertyType "StackIdentifier" QueryProperty = Value Prelude.Text
  set newValue QueryProperty {..}
    = QueryProperty {stackIdentifier = Prelude.pure newValue, ..}
instance Property "TagFilters" QueryProperty where
  type PropertyType "TagFilters" QueryProperty = [TagFilterProperty]
  set newValue QueryProperty {..}
    = QueryProperty {tagFilters = Prelude.pure newValue, ..}