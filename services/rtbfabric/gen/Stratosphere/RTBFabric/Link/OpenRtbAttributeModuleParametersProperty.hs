module Stratosphere.RTBFabric.Link.OpenRtbAttributeModuleParametersProperty (
        module Exports, OpenRtbAttributeModuleParametersProperty(..),
        mkOpenRtbAttributeModuleParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.FilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenRtbAttributeModuleParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-openrtbattributemoduleparameters.html>
    OpenRtbAttributeModuleParametersProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-openrtbattributemoduleparameters.html#cfn-rtbfabric-link-openrtbattributemoduleparameters-action>
                                              action :: ActionProperty,
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-openrtbattributemoduleparameters.html#cfn-rtbfabric-link-openrtbattributemoduleparameters-filterconfiguration>
                                              filterConfiguration :: [FilterProperty],
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-openrtbattributemoduleparameters.html#cfn-rtbfabric-link-openrtbattributemoduleparameters-filtertype>
                                              filterType :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-openrtbattributemoduleparameters.html#cfn-rtbfabric-link-openrtbattributemoduleparameters-holdbackpercentage>
                                              holdbackPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenRtbAttributeModuleParametersProperty ::
  ActionProperty
  -> [FilterProperty]
     -> Value Prelude.Text
        -> Value Prelude.Double -> OpenRtbAttributeModuleParametersProperty
mkOpenRtbAttributeModuleParametersProperty
  action
  filterConfiguration
  filterType
  holdbackPercentage
  = OpenRtbAttributeModuleParametersProperty
      {haddock_workaround_ = (), action = action,
       filterConfiguration = filterConfiguration, filterType = filterType,
       holdbackPercentage = holdbackPercentage}
instance ToResourceProperties OpenRtbAttributeModuleParametersProperty where
  toResourceProperties OpenRtbAttributeModuleParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.OpenRtbAttributeModuleParameters",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "FilterConfiguration" JSON..= filterConfiguration,
                       "FilterType" JSON..= filterType,
                       "HoldbackPercentage" JSON..= holdbackPercentage]}
instance JSON.ToJSON OpenRtbAttributeModuleParametersProperty where
  toJSON OpenRtbAttributeModuleParametersProperty {..}
    = JSON.object
        ["Action" JSON..= action,
         "FilterConfiguration" JSON..= filterConfiguration,
         "FilterType" JSON..= filterType,
         "HoldbackPercentage" JSON..= holdbackPercentage]
instance Property "Action" OpenRtbAttributeModuleParametersProperty where
  type PropertyType "Action" OpenRtbAttributeModuleParametersProperty = ActionProperty
  set newValue OpenRtbAttributeModuleParametersProperty {..}
    = OpenRtbAttributeModuleParametersProperty {action = newValue, ..}
instance Property "FilterConfiguration" OpenRtbAttributeModuleParametersProperty where
  type PropertyType "FilterConfiguration" OpenRtbAttributeModuleParametersProperty = [FilterProperty]
  set newValue OpenRtbAttributeModuleParametersProperty {..}
    = OpenRtbAttributeModuleParametersProperty
        {filterConfiguration = newValue, ..}
instance Property "FilterType" OpenRtbAttributeModuleParametersProperty where
  type PropertyType "FilterType" OpenRtbAttributeModuleParametersProperty = Value Prelude.Text
  set newValue OpenRtbAttributeModuleParametersProperty {..}
    = OpenRtbAttributeModuleParametersProperty
        {filterType = newValue, ..}
instance Property "HoldbackPercentage" OpenRtbAttributeModuleParametersProperty where
  type PropertyType "HoldbackPercentage" OpenRtbAttributeModuleParametersProperty = Value Prelude.Double
  set newValue OpenRtbAttributeModuleParametersProperty {..}
    = OpenRtbAttributeModuleParametersProperty
        {holdbackPercentage = newValue, ..}