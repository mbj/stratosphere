module Stratosphere.QuickSight.Dashboard.ParameterDeclarationProperty (
        module Exports, ParameterDeclarationProperty(..),
        mkParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DecimalParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.IntegerParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StringParameterDeclarationProperty as Exports
import Stratosphere.ResourceProperties
data ParameterDeclarationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html>
    ParameterDeclarationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-datetimeparameterdeclaration>
                                  dateTimeParameterDeclaration :: (Prelude.Maybe DateTimeParameterDeclarationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-decimalparameterdeclaration>
                                  decimalParameterDeclaration :: (Prelude.Maybe DecimalParameterDeclarationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-integerparameterdeclaration>
                                  integerParameterDeclaration :: (Prelude.Maybe IntegerParameterDeclarationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-stringparameterdeclaration>
                                  stringParameterDeclaration :: (Prelude.Maybe StringParameterDeclarationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDeclarationProperty :: ParameterDeclarationProperty
mkParameterDeclarationProperty
  = ParameterDeclarationProperty
      {haddock_workaround_ = (),
       dateTimeParameterDeclaration = Prelude.Nothing,
       decimalParameterDeclaration = Prelude.Nothing,
       integerParameterDeclaration = Prelude.Nothing,
       stringParameterDeclaration = Prelude.Nothing}
instance ToResourceProperties ParameterDeclarationProperty where
  toResourceProperties ParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeParameterDeclaration"
                              Prelude.<$> dateTimeParameterDeclaration,
                            (JSON..=) "DecimalParameterDeclaration"
                              Prelude.<$> decimalParameterDeclaration,
                            (JSON..=) "IntegerParameterDeclaration"
                              Prelude.<$> integerParameterDeclaration,
                            (JSON..=) "StringParameterDeclaration"
                              Prelude.<$> stringParameterDeclaration])}
instance JSON.ToJSON ParameterDeclarationProperty where
  toJSON ParameterDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeParameterDeclaration"
                 Prelude.<$> dateTimeParameterDeclaration,
               (JSON..=) "DecimalParameterDeclaration"
                 Prelude.<$> decimalParameterDeclaration,
               (JSON..=) "IntegerParameterDeclaration"
                 Prelude.<$> integerParameterDeclaration,
               (JSON..=) "StringParameterDeclaration"
                 Prelude.<$> stringParameterDeclaration]))
instance Property "DateTimeParameterDeclaration" ParameterDeclarationProperty where
  type PropertyType "DateTimeParameterDeclaration" ParameterDeclarationProperty = DateTimeParameterDeclarationProperty
  set newValue ParameterDeclarationProperty {..}
    = ParameterDeclarationProperty
        {dateTimeParameterDeclaration = Prelude.pure newValue, ..}
instance Property "DecimalParameterDeclaration" ParameterDeclarationProperty where
  type PropertyType "DecimalParameterDeclaration" ParameterDeclarationProperty = DecimalParameterDeclarationProperty
  set newValue ParameterDeclarationProperty {..}
    = ParameterDeclarationProperty
        {decimalParameterDeclaration = Prelude.pure newValue, ..}
instance Property "IntegerParameterDeclaration" ParameterDeclarationProperty where
  type PropertyType "IntegerParameterDeclaration" ParameterDeclarationProperty = IntegerParameterDeclarationProperty
  set newValue ParameterDeclarationProperty {..}
    = ParameterDeclarationProperty
        {integerParameterDeclaration = Prelude.pure newValue, ..}
instance Property "StringParameterDeclaration" ParameterDeclarationProperty where
  type PropertyType "StringParameterDeclaration" ParameterDeclarationProperty = StringParameterDeclarationProperty
  set newValue ParameterDeclarationProperty {..}
    = ParameterDeclarationProperty
        {stringParameterDeclaration = Prelude.pure newValue, ..}