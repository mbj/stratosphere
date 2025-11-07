module Stratosphere.QBusiness.DataAccessor.ActionFilterConfigurationProperty (
        module Exports, ActionFilterConfigurationProperty(..),
        mkActionFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.AttributeFilterProperty as Exports
import Stratosphere.ResourceProperties
data ActionFilterConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionfilterconfiguration.html>
    ActionFilterConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionfilterconfiguration.html#cfn-qbusiness-dataaccessor-actionfilterconfiguration-documentattributefilter>
                                       documentAttributeFilter :: AttributeFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionFilterConfigurationProperty ::
  AttributeFilterProperty -> ActionFilterConfigurationProperty
mkActionFilterConfigurationProperty documentAttributeFilter
  = ActionFilterConfigurationProperty
      {haddock_workaround_ = (),
       documentAttributeFilter = documentAttributeFilter}
instance ToResourceProperties ActionFilterConfigurationProperty where
  toResourceProperties ActionFilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.ActionFilterConfiguration",
         supportsTags = Prelude.False,
         properties = ["DocumentAttributeFilter"
                         JSON..= documentAttributeFilter]}
instance JSON.ToJSON ActionFilterConfigurationProperty where
  toJSON ActionFilterConfigurationProperty {..}
    = JSON.object
        ["DocumentAttributeFilter" JSON..= documentAttributeFilter]
instance Property "DocumentAttributeFilter" ActionFilterConfigurationProperty where
  type PropertyType "DocumentAttributeFilter" ActionFilterConfigurationProperty = AttributeFilterProperty
  set newValue ActionFilterConfigurationProperty {..}
    = ActionFilterConfigurationProperty
        {documentAttributeFilter = newValue, ..}