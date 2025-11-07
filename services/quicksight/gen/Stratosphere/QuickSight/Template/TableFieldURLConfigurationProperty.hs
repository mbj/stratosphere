module Stratosphere.QuickSight.Template.TableFieldURLConfigurationProperty (
        module Exports, TableFieldURLConfigurationProperty(..),
        mkTableFieldURLConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableFieldImageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableFieldLinkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldURLConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html>
    TableFieldURLConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html#cfn-quicksight-template-tablefieldurlconfiguration-imageconfiguration>
                                        imageConfiguration :: (Prelude.Maybe TableFieldImageConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldurlconfiguration.html#cfn-quicksight-template-tablefieldurlconfiguration-linkconfiguration>
                                        linkConfiguration :: (Prelude.Maybe TableFieldLinkConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldURLConfigurationProperty ::
  TableFieldURLConfigurationProperty
mkTableFieldURLConfigurationProperty
  = TableFieldURLConfigurationProperty
      {haddock_workaround_ = (), imageConfiguration = Prelude.Nothing,
       linkConfiguration = Prelude.Nothing}
instance ToResourceProperties TableFieldURLConfigurationProperty where
  toResourceProperties TableFieldURLConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldURLConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                            (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration])}
instance JSON.ToJSON TableFieldURLConfigurationProperty where
  toJSON TableFieldURLConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
               (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration]))
instance Property "ImageConfiguration" TableFieldURLConfigurationProperty where
  type PropertyType "ImageConfiguration" TableFieldURLConfigurationProperty = TableFieldImageConfigurationProperty
  set newValue TableFieldURLConfigurationProperty {..}
    = TableFieldURLConfigurationProperty
        {imageConfiguration = Prelude.pure newValue, ..}
instance Property "LinkConfiguration" TableFieldURLConfigurationProperty where
  type PropertyType "LinkConfiguration" TableFieldURLConfigurationProperty = TableFieldLinkConfigurationProperty
  set newValue TableFieldURLConfigurationProperty {..}
    = TableFieldURLConfigurationProperty
        {linkConfiguration = Prelude.pure newValue, ..}