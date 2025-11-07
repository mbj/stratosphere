module Stratosphere.QuickSight.Dashboard.ParametersProperty (
        module Exports, ParametersProperty(..), mkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DecimalParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.IntegerParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StringParameterProperty as Exports
import Stratosphere.ResourceProperties
data ParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameters.html>
    ParametersProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameters.html#cfn-quicksight-dashboard-parameters-datetimeparameters>
                        dateTimeParameters :: (Prelude.Maybe [DateTimeParameterProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameters.html#cfn-quicksight-dashboard-parameters-decimalparameters>
                        decimalParameters :: (Prelude.Maybe [DecimalParameterProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameters.html#cfn-quicksight-dashboard-parameters-integerparameters>
                        integerParameters :: (Prelude.Maybe [IntegerParameterProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameters.html#cfn-quicksight-dashboard-parameters-stringparameters>
                        stringParameters :: (Prelude.Maybe [StringParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParametersProperty :: ParametersProperty
mkParametersProperty
  = ParametersProperty
      {haddock_workaround_ = (), dateTimeParameters = Prelude.Nothing,
       decimalParameters = Prelude.Nothing,
       integerParameters = Prelude.Nothing,
       stringParameters = Prelude.Nothing}
instance ToResourceProperties ParametersProperty where
  toResourceProperties ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.Parameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeParameters" Prelude.<$> dateTimeParameters,
                            (JSON..=) "DecimalParameters" Prelude.<$> decimalParameters,
                            (JSON..=) "IntegerParameters" Prelude.<$> integerParameters,
                            (JSON..=) "StringParameters" Prelude.<$> stringParameters])}
instance JSON.ToJSON ParametersProperty where
  toJSON ParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeParameters" Prelude.<$> dateTimeParameters,
               (JSON..=) "DecimalParameters" Prelude.<$> decimalParameters,
               (JSON..=) "IntegerParameters" Prelude.<$> integerParameters,
               (JSON..=) "StringParameters" Prelude.<$> stringParameters]))
instance Property "DateTimeParameters" ParametersProperty where
  type PropertyType "DateTimeParameters" ParametersProperty = [DateTimeParameterProperty]
  set newValue ParametersProperty {..}
    = ParametersProperty
        {dateTimeParameters = Prelude.pure newValue, ..}
instance Property "DecimalParameters" ParametersProperty where
  type PropertyType "DecimalParameters" ParametersProperty = [DecimalParameterProperty]
  set newValue ParametersProperty {..}
    = ParametersProperty
        {decimalParameters = Prelude.pure newValue, ..}
instance Property "IntegerParameters" ParametersProperty where
  type PropertyType "IntegerParameters" ParametersProperty = [IntegerParameterProperty]
  set newValue ParametersProperty {..}
    = ParametersProperty
        {integerParameters = Prelude.pure newValue, ..}
instance Property "StringParameters" ParametersProperty where
  type PropertyType "StringParameters" ParametersProperty = [StringParameterProperty]
  set newValue ParametersProperty {..}
    = ParametersProperty {stringParameters = Prelude.pure newValue, ..}