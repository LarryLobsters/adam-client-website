import { Inter } from 'next/font/google'
import localFont from 'next/font/local'
import { type AppType } from 'next/app'
import { trpc } from '@/utils/trpc'
import '@/components/Calendar.css'
import '../styles/globals.css'
import '../styles/Spinner.css'
import { cn } from '@/lib/utils'

export const fontSans = Inter({
  subsets: ['latin'],
  variable: '--font-sans'
})

const fontHeading = localFont({
  src: '../assets/fonts/CalSans-SemiBold.woff2',
  variable: '--font-heading'
})

const MyApp: AppType = ({ Component, pageProps }) => {
  return (
    <body className={cn('font-sans antialiased', fontSans.variable, fontHeading.variable)}>
      <Component {...pageProps} />
    </body>
  )
}

export default trpc.withTRPC(MyApp)
