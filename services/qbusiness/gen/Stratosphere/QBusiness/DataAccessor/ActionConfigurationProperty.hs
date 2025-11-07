module Stratosphere.QBusiness.DataAccessor.ActionConfigurationProperty (
        module Exports, ActionConfigurationProperty(..),
        mkActionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.ActionFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionconfiguration.html>
    ActionConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionconfiguration.html#cfn-qbusiness-dataaccessor-actionconfiguration-action>
                                 action :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-actionconfiguration.html#cfn-qbusiness-dataaccessor-actionconfiguration-filterconfiguration>
                                 filterConfiguration :: (Prelude.Maybe ActionFilterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionConfigurationProperty ::
  Value Prelude.Text -> ActionConfigurationProperty
mkActionConfigurationProperty action
  = ActionConfigurationProperty
      {haddock_workaround_ = (), action = action,
       filterConfiguration = Prelude.Nothing}
instance ToResourceProperties ActionConfigurationProperty where
  toResourceProperties ActionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.ActionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action]
                           (Prelude.catMaybes
                              [(JSON..=) "FilterConfiguration"
                                 Prelude.<$> filterConfiguration]))}
instance JSON.ToJSON ActionConfigurationProperty where
  toJSON ActionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action]
              (Prelude.catMaybes
                 [(JSON..=) "FilterConfiguration"
                    Prelude.<$> filterConfiguration])))
instance Property "Action" ActionConfigurationProperty where
  type PropertyType "Action" ActionConfigurationProperty = Value Prelude.Text
  set newValue ActionConfigurationProperty {..}
    = ActionConfigurationProperty {action = newValue, ..}
instance Property "FilterConfiguration" ActionConfigurationProperty where
  type PropertyType "FilterConfiguration" ActionConfigurationProperty = ActionFilterConfigurationProperty
  set newValue ActionConfigurationProperty {..}
    = ActionConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}