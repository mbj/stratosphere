module Stratosphere.QuickSight.Analysis.StringParameterDeclarationProperty (
        module Exports, StringParameterDeclarationProperty(..),
        mkStringParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MappedDataSetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringDefaultValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringValueWhenUnsetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringParameterDeclarationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html>
    StringParameterDeclarationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html#cfn-quicksight-analysis-stringparameterdeclaration-defaultvalues>
                                        defaultValues :: (Prelude.Maybe StringDefaultValuesProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html#cfn-quicksight-analysis-stringparameterdeclaration-mappeddatasetparameters>
                                        mappedDataSetParameters :: (Prelude.Maybe [MappedDataSetParameterProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html#cfn-quicksight-analysis-stringparameterdeclaration-name>
                                        name :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html#cfn-quicksight-analysis-stringparameterdeclaration-parametervaluetype>
                                        parameterValueType :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringparameterdeclaration.html#cfn-quicksight-analysis-stringparameterdeclaration-valuewhenunset>
                                        valueWhenUnset :: (Prelude.Maybe StringValueWhenUnsetConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringParameterDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> StringParameterDeclarationProperty
mkStringParameterDeclarationProperty name parameterValueType
  = StringParameterDeclarationProperty
      {haddock_workaround_ = (), name = name,
       parameterValueType = parameterValueType,
       defaultValues = Prelude.Nothing,
       mappedDataSetParameters = Prelude.Nothing,
       valueWhenUnset = Prelude.Nothing}
instance ToResourceProperties StringParameterDeclarationProperty where
  toResourceProperties StringParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.StringParameterDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "ParameterValueType" JSON..= parameterValueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                               (JSON..=) "MappedDataSetParameters"
                                 Prelude.<$> mappedDataSetParameters,
                               (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset]))}
instance JSON.ToJSON StringParameterDeclarationProperty where
  toJSON StringParameterDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "ParameterValueType" JSON..= parameterValueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                  (JSON..=) "MappedDataSetParameters"
                    Prelude.<$> mappedDataSetParameters,
                  (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset])))
instance Property "DefaultValues" StringParameterDeclarationProperty where
  type PropertyType "DefaultValues" StringParameterDeclarationProperty = StringDefaultValuesProperty
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "MappedDataSetParameters" StringParameterDeclarationProperty where
  type PropertyType "MappedDataSetParameters" StringParameterDeclarationProperty = [MappedDataSetParameterProperty]
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {mappedDataSetParameters = Prelude.pure newValue, ..}
instance Property "Name" StringParameterDeclarationProperty where
  type PropertyType "Name" StringParameterDeclarationProperty = Value Prelude.Text
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty {name = newValue, ..}
instance Property "ParameterValueType" StringParameterDeclarationProperty where
  type PropertyType "ParameterValueType" StringParameterDeclarationProperty = Value Prelude.Text
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {parameterValueType = newValue, ..}
instance Property "ValueWhenUnset" StringParameterDeclarationProperty where
  type PropertyType "ValueWhenUnset" StringParameterDeclarationProperty = StringValueWhenUnsetConfigurationProperty
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {valueWhenUnset = Prelude.pure newValue, ..}