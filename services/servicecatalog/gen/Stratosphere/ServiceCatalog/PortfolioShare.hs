module Stratosphere.ServiceCatalog.PortfolioShare (
        PortfolioShare(..), mkPortfolioShare
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortfolioShare
  = PortfolioShare {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                    accountId :: (Value Prelude.Text),
                    portfolioId :: (Value Prelude.Text),
                    shareTagOptions :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortfolioShare ::
  Value Prelude.Text -> Value Prelude.Text -> PortfolioShare
mkPortfolioShare accountId portfolioId
  = PortfolioShare
      {accountId = accountId, portfolioId = portfolioId,
       acceptLanguage = Prelude.Nothing,
       shareTagOptions = Prelude.Nothing}
instance ToResourceProperties PortfolioShare where
  toResourceProperties PortfolioShare {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::PortfolioShare",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId, "PortfolioId" JSON..= portfolioId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "ShareTagOptions" Prelude.<$> shareTagOptions]))}
instance JSON.ToJSON PortfolioShare where
  toJSON PortfolioShare {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId, "PortfolioId" JSON..= portfolioId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "ShareTagOptions" Prelude.<$> shareTagOptions])))
instance Property "AcceptLanguage" PortfolioShare where
  type PropertyType "AcceptLanguage" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {acceptLanguage = Prelude.pure newValue, ..}
instance Property "AccountId" PortfolioShare where
  type PropertyType "AccountId" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {accountId = newValue, ..}
instance Property "PortfolioId" PortfolioShare where
  type PropertyType "PortfolioId" PortfolioShare = Value Prelude.Text
  set newValue PortfolioShare {..}
    = PortfolioShare {portfolioId = newValue, ..}
instance Property "ShareTagOptions" PortfolioShare where
  type PropertyType "ShareTagOptions" PortfolioShare = Value Prelude.Bool
  set newValue PortfolioShare {..}
    = PortfolioShare {shareTagOptions = Prelude.pure newValue, ..}