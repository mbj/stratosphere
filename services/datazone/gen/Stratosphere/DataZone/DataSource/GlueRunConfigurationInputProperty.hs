module Stratosphere.DataZone.DataSource.GlueRunConfigurationInputProperty (
        module Exports, GlueRunConfigurationInputProperty(..),
        mkGlueRunConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.DataSource.RelationalFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueRunConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-gluerunconfigurationinput.html>
    GlueRunConfigurationInputProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-gluerunconfigurationinput.html#cfn-datazone-datasource-gluerunconfigurationinput-autoimportdataqualityresult>
                                       autoImportDataQualityResult :: (Prelude.Maybe (Value Prelude.Bool)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-gluerunconfigurationinput.html#cfn-datazone-datasource-gluerunconfigurationinput-dataaccessrole>
                                       dataAccessRole :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-gluerunconfigurationinput.html#cfn-datazone-datasource-gluerunconfigurationinput-relationalfilterconfigurations>
                                       relationalFilterConfigurations :: [RelationalFilterConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueRunConfigurationInputProperty ::
  [RelationalFilterConfigurationProperty]
  -> GlueRunConfigurationInputProperty
mkGlueRunConfigurationInputProperty relationalFilterConfigurations
  = GlueRunConfigurationInputProperty
      {haddock_workaround_ = (),
       relationalFilterConfigurations = relationalFilterConfigurations,
       autoImportDataQualityResult = Prelude.Nothing,
       dataAccessRole = Prelude.Nothing}
instance ToResourceProperties GlueRunConfigurationInputProperty where
  toResourceProperties GlueRunConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.GlueRunConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RelationalFilterConfigurations"
                              JSON..= relationalFilterConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoImportDataQualityResult"
                                 Prelude.<$> autoImportDataQualityResult,
                               (JSON..=) "DataAccessRole" Prelude.<$> dataAccessRole]))}
instance JSON.ToJSON GlueRunConfigurationInputProperty where
  toJSON GlueRunConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RelationalFilterConfigurations"
                 JSON..= relationalFilterConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "AutoImportDataQualityResult"
                    Prelude.<$> autoImportDataQualityResult,
                  (JSON..=) "DataAccessRole" Prelude.<$> dataAccessRole])))
instance Property "AutoImportDataQualityResult" GlueRunConfigurationInputProperty where
  type PropertyType "AutoImportDataQualityResult" GlueRunConfigurationInputProperty = Value Prelude.Bool
  set newValue GlueRunConfigurationInputProperty {..}
    = GlueRunConfigurationInputProperty
        {autoImportDataQualityResult = Prelude.pure newValue, ..}
instance Property "DataAccessRole" GlueRunConfigurationInputProperty where
  type PropertyType "DataAccessRole" GlueRunConfigurationInputProperty = Value Prelude.Text
  set newValue GlueRunConfigurationInputProperty {..}
    = GlueRunConfigurationInputProperty
        {dataAccessRole = Prelude.pure newValue, ..}
instance Property "RelationalFilterConfigurations" GlueRunConfigurationInputProperty where
  type PropertyType "RelationalFilterConfigurations" GlueRunConfigurationInputProperty = [RelationalFilterConfigurationProperty]
  set newValue GlueRunConfigurationInputProperty {..}
    = GlueRunConfigurationInputProperty
        {relationalFilterConfigurations = newValue, ..}