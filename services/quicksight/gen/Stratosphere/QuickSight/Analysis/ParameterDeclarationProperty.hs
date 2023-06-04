module Stratosphere.QuickSight.Analysis.ParameterDeclarationProperty (
        module Exports, ParameterDeclarationProperty(..),
        mkParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateTimeParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DecimalParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.IntegerParameterDeclarationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringParameterDeclarationProperty as Exports
import Stratosphere.ResourceProperties
data ParameterDeclarationProperty
  = ParameterDeclarationProperty {dateTimeParameterDeclaration :: (Prelude.Maybe DateTimeParameterDeclarationProperty),
                                  decimalParameterDeclaration :: (Prelude.Maybe DecimalParameterDeclarationProperty),
                                  integerParameterDeclaration :: (Prelude.Maybe IntegerParameterDeclarationProperty),
                                  stringParameterDeclaration :: (Prelude.Maybe StringParameterDeclarationProperty)}
mkParameterDeclarationProperty :: ParameterDeclarationProperty
mkParameterDeclarationProperty
  = ParameterDeclarationProperty
      {dateTimeParameterDeclaration = Prelude.Nothing,
       decimalParameterDeclaration = Prelude.Nothing,
       integerParameterDeclaration = Prelude.Nothing,
       stringParameterDeclaration = Prelude.Nothing}
instance ToResourceProperties ParameterDeclarationProperty where
  toResourceProperties ParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ParameterDeclaration",
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